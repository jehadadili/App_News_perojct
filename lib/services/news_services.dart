import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';


class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticlesModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articleModel = ArticlesModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    }on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message']
      ?? 'oops there was an error , try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error , try later');
    }
  }
}