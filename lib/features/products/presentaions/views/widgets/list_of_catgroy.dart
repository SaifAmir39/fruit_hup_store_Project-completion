import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/catrogy_item.dart';

class ListOfCatgroy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SizedBox(
    height: 100,
     child: ListView.builder(
      
      scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:  (context,index){
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal:  8.0),
       child: CatrogyItem(),
     ); 
      }  ),
   );

  }
}