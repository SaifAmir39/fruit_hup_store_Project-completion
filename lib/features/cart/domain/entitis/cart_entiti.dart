import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_item_entitis.dart';

class CartEntiti {
  List<CartItementity> cartItems;

  CartEntiti({required this.cartItems});

  additemtocart(CartItementity cartItementity) {
    cartItems.add(cartItementity);
  }

  removeitemfromcart(CartItementity cartItementity) {
    cartItems.remove(cartItementity);
  }

  CartItementity getitem(Productentity productentity) {
    for (var item in cartItems) {
      if (item.productentity.code == productentity.code) {
        return item;
      }
    }
    return CartItementity(productentity: productentity, quantity: 1);
  }

  bool isitemincart(Productentity productentity) {
    for (var item in cartItems) {
      if (item.productentity.code == productentity.code) {
        return true;
      }
    }
    return false;
  }
}
