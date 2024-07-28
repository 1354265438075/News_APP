import 'package:flutter/material.dart';
import 'package:news_app9/screens/SecondScreen.dart';
import 'package:news_app9/widgets/category_card.dart';

import '../models/category_model.dart';

class Category_list_view extends StatelessWidget {
  const Category_list_view({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(image: "asssets/business.jpg", categoryName: "Business"),
    CategoryModel(image: "asssets/entertainment.jpg", categoryName: "Entertainment"),
    CategoryModel(image: "asssets/health3.jpg", categoryName: "Health"),
    CategoryModel(image: "asssets/science.jpg", categoryName: "Science"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: InkWell(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the second screen here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      category: categories[index],
                    ),
                  ),
                );
              },
              child: CategoryCards(category: categories[index]),
            );
          },
        ),
      ),
    );
  }
}