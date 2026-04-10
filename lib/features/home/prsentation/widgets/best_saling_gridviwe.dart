import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/product_itam.dart';
import 'package:fruit_hup_store/features/products%20detailes/presentation/views/products_viwe.dart';

class BestSalingGridviwe extends StatelessWidget {
final  List<Productentity> products;
  BestSalingGridviwe({required this.products});
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 163/214,
        crossAxisCount: 2,
       mainAxisSpacing: 8,
       crossAxisSpacing: 16,
      ),
      
      itemCount: products.length,
      itemBuilder:
      (context, index) {
        
        return Productitem(onTap: () { 
           
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsViwe(product: products[index],)));
         }, product: products[index],);
      },
    );
  }
}
