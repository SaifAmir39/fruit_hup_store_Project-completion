import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';

import 'package:fruit_hup_store/features/products%20detailes/presentation/widgets/products_viwe_body.dart';

class ProductsViwe extends StatelessWidget {
  static const routeName = 'productsviwe';
 final  Productentity product;
  ProductsViwe({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulid_Appbar(title: "تفاصيل المنتج", context: context),
      body: ProductsViweBody(product: product),
    );
  }
}