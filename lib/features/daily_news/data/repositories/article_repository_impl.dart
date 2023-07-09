import 'package:clean_daily_news/core/resources/data_state.dart';
import 'package:clean_daily_news/features/daily_news/data/models/article.dart';
import 'package:clean_daily_news/features/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
