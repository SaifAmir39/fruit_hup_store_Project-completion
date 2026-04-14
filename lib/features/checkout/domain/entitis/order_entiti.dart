import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';

class OrderEntiti {
  String ?uiID;
 CartEntiti ?orderItems;
 int ?ispymentmethod;
 AddressEntiti? addressEntiti;



 OrderEntiti({required this.uiID ,this.orderItems, this.ispymentmethod, this.addressEntiti});
 
}