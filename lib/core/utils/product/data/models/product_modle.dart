// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/data/models/review_modle.dart';


class productModle {
  String name;
  String price;
  String description;
  File image;
  String code;
  bool isFeatured;
  String? imageURL;
  bool isOrganic = false;
  int numberofcaliores;
  int unitaMount;
  int expirationsMountes;
    List<ReviewModle> reviews;
  productModle({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.code,
    required this.isFeatured,
    this.imageURL,
    required this.numberofcaliores,
    required this.unitaMount,
    required this.expirationsMountes,
    required this.isOrganic,
    required this.reviews,
  });
  factory productModle.fromentity(
    Productentity productentity,
  ) {
    return productModle(
      name: productentity.name,
      price: productentity.price,
      description: productentity.description,
      image: productentity.image,
      code: productentity.code,
      isFeatured: productentity.isFeatured,
      imageURL: productentity.imageURL,
      numberofcaliores: productentity.numberofcaliores,
      unitaMount: productentity.unitaMount,
      expirationsMountes: productentity.expirationsMountes,
      isOrganic: productentity.isOrganic, reviews: productentity.reviews.map((e) => ReviewModle.fromEntity(e)).toList(),
    );
  }

  ToMap() {
    return {
      "name": name,
      "price": price,
      "description": description,
      "code": code,
      "isFeatured": isFeatured,
      "imageURL": imageURL,
      "numberofcaliores": numberofcaliores,
      "unitaMount": unitaMount,
      "expirationsMountes": expirationsMountes,
      "isOrganic": isOrganic,
      "reviews": reviews.map((e) => e.toMap()).toList(),
    };
  }
}
