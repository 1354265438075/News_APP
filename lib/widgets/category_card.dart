import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app9/models/category_model.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key,required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right:16),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.image),fit: BoxFit.fill,
            )

        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}