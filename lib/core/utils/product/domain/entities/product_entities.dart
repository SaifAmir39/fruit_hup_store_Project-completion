import 'dart:io';

import 'package:fruit_hup_store/core/utils/product/domain/entities/review_entity.dart';


class Productentity {
  String name;
  String price;
  String description;
  File image;
  String code;
  bool isFeatured;
   String? imageURL;
   bool isOrganic=false;
   int numberofcaliores;
   int unitaMount;
   int expirationsMountes;
   List<ReviewEntity> reviews;

  Productentity({

    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.code,
    required this.isFeatured,
    required this.numberofcaliores,
    required this.unitaMount,
    required this.expirationsMountes,
    required this.isOrganic,
    
   this.imageURL,
   required this.reviews,
  });
  
}
