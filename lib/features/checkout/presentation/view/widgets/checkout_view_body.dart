import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/active_Step.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/in_active_step.dart';

class CheckoutViewBody extends StatelessWidget {

  
 final List<String> steps = [
  "الشحن",
  "العنوان",
  "الدفع",
  "المراجعة",
  ];
  Widget build(BuildContext context) {

   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0),
     child: Column(
      
      children: [
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        if (index == 0) {
          return  ActiveStep(title: steps[index]);
        } else {
          return inActiveStep(number: '${index + 1}', title: steps[index],);
        }
      }),
     )
      ],
     ),
   );
    
  }
}