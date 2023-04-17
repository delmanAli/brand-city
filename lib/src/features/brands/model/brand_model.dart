import 'package:brand_city/src/features/product/model/product_model.dart';

class BrandModel {
  final String? id;
  final String? name;
  final String? image;
  final List<ProductModel>? products;
  // final Timestamp? createdAt;
  // final Timestamp? updatedAt;

  BrandModel({
    this.id,
    this.name,
    this.image,
    this.products,
  });
}
