import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/checkout/presentation/manger/order_cubit.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/shaping_item.dart';

class ShapingSections extends StatefulWidget {
  
  ShapingSections({Key? key, }) : super(key: key);
  @override
  State<ShapingSections> createState() => ShapingSectionsState();
}

class ShapingSectionsState extends State<ShapingSections> {
 
  int selectedIndex = -1;


bool valdton(){
  if(selectedIndex==-1){
    return false;
  }else{
    BlocProvider.of<OrderCubit>(context).getpaymentway(way: selectedIndex);
    return true;
  }
}

 
 
 
  @override
  
  
  Widget build(BuildContext context) {
   
var ordercunite=BlocProvider.of<OrderCubit>(context);

    return Column(
     
      children: [
        ShapingItem(iscardit: true, onTap: () { 
            selectedIndex = 0;
            (context as Element).markNeedsBuild();
            
         },isselected: selectedIndex == 0, totleprice: ordercunite.order.orderItems!.calculatetotalprice()),
        SizedBox(height: 16,),
        ShapingItem(iscardit: false, onTap: () { 
           
            selectedIndex = 1;
            (context as Element).markNeedsBuild();

        },isselected: selectedIndex == 1, totleprice: ordercunite.order.orderItems!.calculatetotalprice(),),
      ],
    );
    
  }
}