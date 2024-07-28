import 'package:flutter/material.dart';
import 'package:news_app9/models/article_models.dart';
import 'package:news_app9/service/newsService.dart';
import 'package:news_app9/widgets/news_tile.dart';

class news_list_view extends StatefulWidget {
  final String categoryName;
  const news_list_view({Key? key, required this.categoryName}) : super(key: key);

  State<news_list_view> createState() => _news_list_viewState();
}

class _news_list_viewState extends State<news_list_view> {

  List<ArticleModels> data=[];

  @override
  void initState(){
    super.initState();
    getNews();

  }

  Future<void> getNews() async {
    data=await NewsService(widget.categoryName).getNews();
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    print("ali");
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return NewsTile(arc: data[index]);


    },childCount: data.length));
  }
}
