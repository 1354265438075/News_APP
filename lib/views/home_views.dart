import 'package:flutter/material.dart';
import 'package:news_app9/screens/category_list_view.dart';
import 'package:news_app9/screens/news_list_view.dart';

class HOMEVIEW extends StatelessWidget {
  const HOMEVIEW({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[100],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News", style: TextStyle(color: Colors.black)),
            Text("Tile", style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: Category_list_view()),
          SliverToBoxAdapter(child: SizedBox(height: 5)),
          news_list_view(categoryName: "main"),
        ],
      ),
    );
  }
}