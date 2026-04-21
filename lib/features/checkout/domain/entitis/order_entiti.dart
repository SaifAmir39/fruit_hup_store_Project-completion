import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_productes_entiti.dart';

class OrderEntiti {
  String ?id;
  String ?uiID;
 CartEntiti ?orderItems;
 int ?ispymentmethod;
 String ?status;
 AddressEntiti? addressEntiti;
double ?totalPrice;
List<OrderProductesEntiti> ?orderPorductes;


 OrderEntiti({required this.uiID ,this.orderItems, this.ispymentmethod, this.addressEntiti,this.id,this.totalPrice,this.status,this.orderPorductes});
 
}