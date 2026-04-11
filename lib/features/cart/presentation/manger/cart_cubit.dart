import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntiti cartEntiti=CartEntiti(cartItems: []);
  

  void addtocart(Productentity productentity){
  bool  istemincart = cartEntiti.isitemincart(productentity);
  var cartItementity=cartEntiti.getitem(productentity);
  if(istemincart){
  cartItementity.incresquantity();
  }
else {
  cartEntiti.additemtocart(cartItementity);
  
}
   
    emit(AddItemtocart());
  }
 decreasetocart(Productentity productentity){
  bool  istemincart = cartEntiti.isitemincart(productentity);
  var cartItementity=cartEntiti.getitem(productentity);
  if(istemincart){
  cartItementity.decresquantity();
  }
  
    emit(CartUpdate());
 }
 removefromcart(Productentity productentity){
  bool  istemincart = cartEntiti.isitemincart(productentity);
  var cartItementity=cartEntiti.getitem(productentity);
  if(istemincart){
  cartEntiti.removeitemfromcart(cartItementity);
  }
  
    emit(RemoveItemfromcart());
 }

}

