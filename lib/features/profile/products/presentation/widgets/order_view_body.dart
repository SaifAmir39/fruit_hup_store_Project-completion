import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/manger/bloc/order_bloc.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/order_iteams.dart';

class OrderViewBody extends StatefulWidget {
  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

class _OrderViewBodyState extends State<OrderViewBody> {
  @override
  void initState() {
    BlocProvider.of<OrderBloc>(context).add(GetOrderEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {

        if (state is OrderLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        else if (state is OrderError) {
          return Center(child: Text(state.message));
        }
        else if (state is OrderSuccess) {
return ListView.builder(
  itemCount: state.orders.length,
  itemBuilder: (context, index) {
  
  return OrderIteams (order: state.orders[index],);
});
        }
        else {
          return Container(
            child: Center(
              child:Column(
             children: [
              Icon(Icons.error,size: 100,),
              SizedBox(height: 20,),
              Text("لا يوجد طلبات",style: TextStyle(fontSize: 20),)
             ],
              ),
            ),
          );
        }
        
      },
    );
  }
}
