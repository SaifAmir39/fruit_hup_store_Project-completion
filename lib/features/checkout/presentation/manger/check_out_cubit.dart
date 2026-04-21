import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/get%20user.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';
import 'package:meta/meta.dart';

part 'check_out_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {

OrderRepo orderRepo; 

  CheckoutCubit({required this.orderRepo}) : super(OrderInitial());
  var order =OrderEntiti(uiID: getinfouserdata().udi, );
 
 getOrderitems({required  items}){
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
  print("ADDRESS📊📊: ${address.name}");
  return address;
 }
  addorder()async{
    emit(AddorderLoedingstate());
    var reslut=await orderRepo.createOrder(order: order);
    reslut.fold((failer) => emit(AddorderfailerState(errmessage: failer.massage)), (r) => emit(AddordersucessState()));
  } 
   
  
  
}
