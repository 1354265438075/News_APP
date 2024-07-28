import 'package:dio/dio.dart';
import 'package:news_app9/models/article_models.dart';


class NewsService {

  final Dio dio = Dio();
  final String categoryName;

  NewsService(this.categoryName);
  Future<List<ArticleModels>> getNews() async {
    if (categoryName=="main"){
      Response response = await dio.get("https://newsapi.org/v2/everything?q=apple&from=2024-07-05&to=2024-07-05&sortBy=popularity&apiKey=417a60d4f8134fd2b2d12ef1634685a8");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModels> articleList = [];
      for (var i in articles) {

        //ArticleModels articleModel = ArticleModels(
        //  image: i["urlToImage"],
         // title: i["title"],
         // subtitle: i["description"],
        //);
        articleList.add(ArticleModels.fromJson(i));
    }
      return articleList;
    }
    else{
      Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=417a60d4f8134fd2b2d12ef1634685a8");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModels> articleList = [];
      for (var i in articles) {
        ArticleModels articleModel = ArticleModels(
          image: i["urlToImage"],
          title: i["title"],
          subtitle: i["description"],
        );
        articleList.add(articleModel);
    }
      return articleList;
    }


  }

}