import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/views/best_selling_view.dart';

class BestSalingHeader  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("الأكثر مبيعاً",textAlign:TextAlign.right , style: TextStyles.bold16.copyWith(
          color: Color(0xFF0C0D0D),
        ),),

        GestureDetector(
          onTap: (){

         Navigator.pushNamed(context, BestSellingView.routeName);

          },
        child:  Text("المزيد ",textAlign:TextAlign.right,style:TextStyles.regular13),
        ),
      ],  
    );
  }
}