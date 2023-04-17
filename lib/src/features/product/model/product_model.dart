class ProductModel {
  final String? id;
  final String? title;
  final String? description;
  final String? image;
  final double? price;
  final double? rating;
  final int? reviews;
  final bool? isFavourite;
  final bool? isPopular;
  final String? category;
  final String? brand;
  final String? color;
  final String? size;

  // final Timestamp? createdAt;
  // final Timestamp? updatedAt;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.image,
    this.price,
    this.rating,
    this.reviews,
    this.isFavourite,
    this.isPopular,
    this.category,
    this.brand,
    this.color,
    this.size,
  });
}
