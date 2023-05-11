import 'package:brand_city/src/features/category/category_list_view.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoryListViewWidget(),
    );
  }
}
