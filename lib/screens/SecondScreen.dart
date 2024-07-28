import 'package:flutter/material.dart';
import 'package:news_app9/models/category_model.dart';
import 'package:news_app9/screens/news_list_view.dart';
class SecondScreen extends StatelessWidget {
  final CategoryModel category;
  const SecondScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category.categoryName,style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: (){Navigator.of(context).pop();},
              child: Icon(Icons.arrow_back_ios,color: Colors.white,))),


        body:
        CustomScrollView(
          slivers: [
            news_list_view(categoryName: category.categoryName),
          ],
        )

    );
  }
}