import 'package:news/models/article_model.dart';

class HomeModel{
  List <ArticlesModel> articles = [];
  HomeModel({
    required this.articles,
  });

  HomeModel.fromJson(Map<String ,dynamic > ? json){
    for( var element in json!['articles']){
      articles.add(ArticlesModel.fromJson(element));
    }
  }
}