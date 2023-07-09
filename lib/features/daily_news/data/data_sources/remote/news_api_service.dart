import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:clean_daily_news/core/constants/constants.dart';
import 'package:clean_daily_news/features/daily_news/data/models/article.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  // FIXME the response from the endpoint is not a list of article models, We
  // manually changed the method of Retrofit generation to obtain the required
  // list of article models
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });
}
