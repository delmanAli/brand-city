import 'package:brand_city/src/features/category/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListViewWidget extends StatelessWidget {
  const CategoryListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return CategoryWidget();
      },
    );
  }
}
