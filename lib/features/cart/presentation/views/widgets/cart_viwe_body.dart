import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/widgets/cart_item.dart';

class CartViweBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return
     Column(
      children: [
        SizedBox(height: 16,),
      Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFEBF9F1) /* Green1-50 */,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
    Text(
      'لديك 3 منتجات في سله التسوق',
      style: TextStyle(
        color: const Color(0xFF1B5E37) /* Green1-500 */,
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w400,
        height: 1.60,
      ),
    ),
        ],
      ),
    ),
    SizedBox(height: 24,),
    Expanded(
      child: ListView.builder(
        
        itemBuilder: (context, index) {
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CartItem(),
        );
      },
      itemCount: 10,
      ),
    ),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Customebottun(onpressed: (){}, title: "الدفع  120جنيه"),
    ),

    SizedBox(height: 16,),
    
             
      ],
    );
  }
}