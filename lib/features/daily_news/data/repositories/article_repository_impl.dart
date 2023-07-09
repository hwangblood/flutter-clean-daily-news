import 'dart:io';

import 'package:dio/dio.dart';

import 'package:clean_daily_news/core/constants/constants.dart';
import 'package:clean_daily_news/core/resources/data_state.dart';
import 'package:clean_daily_news/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_daily_news/features/daily_news/data/models/article.dart';
import 'package:clean_daily_news/features/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsApiKey,
        country: countryQuery,
        category: categoryQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailure(
          DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioError catch (e) {
      return DataFailure(e);
    }
  }
}
