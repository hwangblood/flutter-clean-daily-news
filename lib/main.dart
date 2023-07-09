import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:clean_daily_news/config/theme/app_theme.dart';
import 'package:clean_daily_news/features/daily_news/presentation/blocs/article/remote/remote_articles_bloc.dart';
import 'package:clean_daily_news/features/daily_news/presentation/pages/home/daily_news_screen.dart';
import 'package:clean_daily_news/injection_container.dart';

const appName = 'Daily News';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(GetArticles()),
      child: MaterialApp(
        title: appName,
        theme: appTheme,
        home: DailyNewsScreen(),
      ),
    );
  }
}
