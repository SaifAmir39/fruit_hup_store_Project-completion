import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_item_entitis.dart';
import 'package:fruit_hup_store/features/cart/presentation/manger/cart_cubit.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/widgets/list_of_items.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/checkout_view.dart';

class CartViweBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<CartItementity> cartItems =  BlocProvider.of<CartCubit>(context).cartEntiti.cartItems;
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
       
    
           return     cartItems.isNotEmpty?  Column(
      children: [
        SizedBox(height: 16,),
   cartItems.isNotEmpty?   Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFEBF9F1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
    Text(
      'لديك ${cartItems.length} منتجات في سله التسوق',
      style: TextStyle(
        color: const Color(0xFF1B5E37), 
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w400,
        height: 1.60,
      ),
    ),
        ],
      ),
    ): SizedBox(),
    SizedBox(height: 24,),
    Expanded(
      child: ListOfItems(),
    ),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Customebottun(onpressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context){
          return CheckoutView(
            cartEntiti: BlocProvider.of<CartCubit>(context).cartEntiti,
          );
        } ),
        
        );
      }, title: "الدفع ${BlocProvider.of<CartCubit>(context).cartEntiti.calculatetotalprice().toStringAsFixed(2)} جنيه",),
    ),

    SizedBox(height: 16,),
    
             
      ],
    ):Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
       Center(child: Icon(Icons.shopping_cart_outlined, size: 64, color: Color(0xFF969899),)),
        SizedBox(height: 16,),
        Center(
          child: Text(
            "سلة التسوق فارغة",
            style: TextStyle(
              color: const Color(0xFF969899),
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
      },
    );
  }
}