import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:clean_daily_news/features/daily_news/data/data_sources/local/dao/article_dao.dart';
import 'package:clean_daily_news/features/daily_news/data/models/article.dart';

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase {
  ArticleDao get personDao;
}
