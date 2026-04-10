
import 'package:fruit_hup_store/core/utils/product/data/models/review_modle.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';

class ProductModel {
  String name;
  String price;
  String description;
  String? image;
  String code;
  bool isFeatured;
  bool isOrganic;
  int numberOfCalories;
  int unitAmount;
  int expirationMonths;
  List<ReviewModle> reviews;
  int? sellingCount;

  ProductModel({
    required this.name,
    required this.price,
    required this.description,
    this.image,
    required this.code,
    required this.isFeatured,
   
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.expirationMonths,
    required this.reviews,
     this.sellingCount=0,
  });

  Productentity toEntity() {
    return Productentity(
      name: name,
      price: price,
      description: description,
      image: image??"",
      code: code,
      isFeatured: isFeatured,
     
      numberofcaliores: numberOfCalories,
      unitaMount: unitAmount,
      expirationsMountes: expirationMonths,
      isOrganic: isOrganic,
      reviews: reviews.map((e) => e.toEntity()).toList(),
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
  return ProductModel(
    name: json['name'] ?? '',
    description: json['description'] ?? '',
    code: json['code'] ?? 0,
    price: json['price'] ?? 0,
    image: json['imageURL'] ?? '',
    isFeatured: json['isFeatured'] ?? false,

    // 👇 الحاجات الاختيارية
    numberOfCalories: json['numberofcaliores'] ?? 0,
    unitAmount: json['unitaMount'] ?? 0,
    isOrganic: json['isOrganic'] ?? false,
    expirationMonths: json['expirationsMountes'] ?? 0, reviews: (json['reviews'] as List<dynamic>?)
        ?.map((reviewJson) => ReviewModle.fromjson(reviewJson))
        .toList() ?? [],
  );
}
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "price": price,
      "description": description,
      "code": code,
      "isFeatured": isFeatured,
      "imageURL": image,
      "numberofcaliores": numberOfCalories,
      "unitaMount": unitAmount,
      "expirationsMountes": expirationMonths,
      "isOrganic": isOrganic,
      "reviews": reviews.map((e) => e.toMap()).toList(),
      "sellingCount": sellingCount,
    };
  }
}