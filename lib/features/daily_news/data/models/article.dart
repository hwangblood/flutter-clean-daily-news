import 'package:clean_daily_news/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  ArticleModel({
    int? id,
    String? author,
    String? title,
    String? description,
    String? url,
    String? imageUrl,
    String? publishedAt,
    String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) => ArticleModel(
        author: map['author'] ?? '',
        title: map['title'] ?? '',
        description: map['description'] ?? '',
        url: map['url'] ?? '',
        imageUrl: map['imageUrl'] ?? '',
        publishedAt: map['publishedAt'] ?? '',
        content: map['content'] ?? '',
      );
}
