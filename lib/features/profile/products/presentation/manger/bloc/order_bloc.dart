
import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';
import 'package:meta/meta.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderRepo orderRepo;

  
  OrderBloc({required this.orderRepo}) : super(OrderInitial()) {(

  on<GetOrderEvent>((event, emit)async{
   
  emit(OrderLoading());
  await for(var reslut in orderRepo.getOrders()){
       reslut.fold(
    (failer) => emit(OrderError(message: failer.massage)),
    (order) => emit(OrderSuccess(orders: order)),
  
   );
   }
   
   
  
  

  }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

 
 
 
 )); 
 
 
 
 }
}