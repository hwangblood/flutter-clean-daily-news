import 'package:clean_daily_news/core/usecases/usecase.dart';
import 'package:clean_daily_news/features/daily_news/domain/entities/article.dart';
import 'package:clean_daily_news/features/daily_news/domain/repositories/article_repository.dart';

class SaveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? article}) =>
      _articleRepository.saveArticle(article!);
}
