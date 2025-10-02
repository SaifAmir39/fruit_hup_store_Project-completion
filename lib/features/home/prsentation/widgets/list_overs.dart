import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/featured_item.dart';

class ListOvers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children:List.generate(4,(index) {
          return FeaturedItem();
        } ),
      ) ,
    );
  }
}