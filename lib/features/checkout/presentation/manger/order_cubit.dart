import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {



  OrderCubit() : super(OrderInitial());
  var order =OrderEntiti();
 
 getOrderitems({required CartEntiti items}){
  order.orderItems=items;
  print("ORDER ITEMS 🛒🛒🛒: ${items.cartItems.length}");
  return items;
 }
 
 
 getpaymentway({required int way}){
  print("PAYMENT WAY 🚛🚛🚛: $way");
  order.ispymentmethod=way;
  
  return way;

 }

 getAddres({required AddressEntiti address}){
  order.addressEntiti=address;
  print("ADDRESS📊📊: $address");
  return address;
 }


  
}
