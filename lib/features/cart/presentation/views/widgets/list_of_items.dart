import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_item_entitis.dart';
import 'package:fruit_hup_store/features/cart/presentation/manger/cart_cubit.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/widgets/cart_item.dart';

class ListOfItems extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    List<CartItementity>  CartItems=BlocProvider.of<CartCubit>(context).cartEntiti.cartItems;

   return ListView.builder(
        
        itemBuilder: (context, index) {
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CartItem(cartItementity: CartItems[index]),
        );
      },
      itemCount: CartItems.length,
      );
  }
}