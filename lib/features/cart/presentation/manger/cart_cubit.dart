import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_item_entitis.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntiti cartEntiti=CartEntiti(cartItems: []);

  void addtocart(Productentity productentity){
  bool  istemincart = cartEntiti.isitemincart(productentity);
  if(istemincart){
    for (var item in cartEntiti.cartItems) {
      if(item.productentity == productentity){
        item.incresquantity();
        emit(AddItemtocart());
      }
    }
  }
else {
  CartItementity cartItementity = CartItementity(productentity: productentity,
   quantity: 1,
   );
  
  
  cartEntiti.additemtocart(
    cartItementity

  );  
    emit(AddItemtocart());
  }
}
}
