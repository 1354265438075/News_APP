import 'package:dio/dio.dart';
import 'package:news_app9/models/article_models.dart';


class NewsService {
  final Dio dio = Dio();
  final String categoryName;

  NewsService(this.categoryName);

  Future<List<ArticleModels>> getNews() async {
    try {
      Response response;
      if (categoryName == "main") {
        response = await dio.get(
          "https://newsapi.org/v2/everything?q=tesla&from=2024-06-28&sortBy=publishedAt&apiKey=417a60d4f8134fd2b2d12ef1634685a8",
        );
      } else {
        response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=417a60d4f8134fd2b2d12ef1634685a8",
        );
      }

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData["articles"];

        List<ArticleModels> articleList = [];
        for (var article in articles) {
          print('Article Data: $article'); // Print each article for debugging
          articleList.add(ArticleModels.fromJson(article));
        }
        return articleList;
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }
}