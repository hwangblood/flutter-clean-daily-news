import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? imageUrl;
  final String? publishedAt;
  final String? content;

  ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.imageUrl,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props => [
        id,
        author,
        title,
        description,
        url,
        imageUrl,
        publishedAt,
        content,
      ];
}
