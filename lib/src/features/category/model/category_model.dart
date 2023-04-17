import 'package:brand_city/src/features/product/model/product_model.dart';

class CategoryModel {
  final String? id;
  final String? name;
  final String? image;
  final String? description;
  final List<ProductModel>? products;
  // final Timestamp? createdAt;
  // final Timestamp? updatedAt;

  CategoryModel({
    this.id,
    this.name,
    this.image,
    this.description,
    this.products,
  });
}
