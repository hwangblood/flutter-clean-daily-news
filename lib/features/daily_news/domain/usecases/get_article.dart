import 'package:clean_daily_news/core/resources/data_state.dart';
import 'package:clean_daily_news/core/usecases/usecase.dart';
import 'package:clean_daily_news/features/daily_news/domain/entities/article.dart';
import 'package:clean_daily_news/features/daily_news/domain/repositories/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void article}) {
    return _articleRepository.getNewsArticles();
  }
}
