import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:clean_daily_news/features/daily_news/presentation/blocs/article/remote/remote_articles_bloc.dart';
import 'package:clean_daily_news/features/daily_news/presentation/widgets/article_tile.dart';

class DailyNewsScreen extends StatelessWidget {
  const DailyNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily News',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocBuilder<RemoteArticlesBloc, RemoteArticlesState>(
        builder: (context, state) {
          if (state is RemoteArticlesLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is RemoteArticlesError) {
            return Center(child: Icon(Icons.refresh));
          }

          if (state is RemoteArticlesDone) {
            return ListView.builder(
              itemCount: state.articles!.length,
              itemBuilder: (BuildContext context, int index) {
                return ArticleTile(
                  article: state.articles!.elementAt(index),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
