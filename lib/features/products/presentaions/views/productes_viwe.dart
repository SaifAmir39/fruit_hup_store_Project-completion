import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/custome_App_bar.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/productes_viwe_body.dart';

class ProductesViwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomeAppbar(title: "المنتجات", context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ProductesViweBody(),
      ),
    );
  
  }
}