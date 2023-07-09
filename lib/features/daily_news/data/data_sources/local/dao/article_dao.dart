import 'package:floor/floor.dart';

import 'package:clean_daily_news/features/daily_news/data/models/article.dart';

@dao
abstract class ArticleDao {
  @Query('SELECT * FROM article')
  Future<List<ArticleModel>> getArticles();

  @insert
  Future<void> insertArticle(ArticleModel article);

  @delete
  Future<void> deleteArticle(ArticleModel article);
}
