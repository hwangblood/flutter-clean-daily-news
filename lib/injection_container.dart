import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:clean_daily_news/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:clean_daily_news/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_daily_news/features/daily_news/data/repositories/article_repository_impl.dart';
import 'package:clean_daily_news/features/daily_news/domain/repositories/article_repository.dart';
import 'package:clean_daily_news/features/daily_news/domain/usecases/get_article.dart';
import 'package:clean_daily_news/features/daily_news/domain/usecases/get_saved_article.dart';
import 'package:clean_daily_news/features/daily_news/domain/usecases/remove_article.dart';
import 'package:clean_daily_news/features/daily_news/domain/usecases/save_article.dart';
import 'package:clean_daily_news/features/daily_news/presentation/blocs/article/remote/remote_articles_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Database
  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  sl.registerSingleton<AppDatabase>(database);

  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl(), sl()));

  // Use Cases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  sl.registerSingleton<GetSavedArticleUseCase>(GetSavedArticleUseCase(sl()));
  sl.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(sl()));
  sl.registerSingleton<RemoveArticleUseCase>(RemoveArticleUseCase(sl()));

  // Blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
