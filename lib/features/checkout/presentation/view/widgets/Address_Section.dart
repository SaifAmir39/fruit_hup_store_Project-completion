import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/input_addres_textfailed.dart';

class AddressSection  extends StatefulWidget{
  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  bool isSave=false;
  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        InputAddresTextfailed(hintText: "الاسم كامل",),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "البريد الإلكتروني",),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "العنوان",),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "المدينه",),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "رقم الطابق , رقم الشقه ..",),
        SizedBox(height: 16,),
      Row(
        children: [
          Text(
            'حفظ العنوان',
            style: TextStyle(
              color: const Color(0xFF949D9E) /* Grayscale-400 */,
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 1.70,
            ),
          ),
      
            SizedBox(
              width: 8,
            ),
      
          
          
          Transform.scale(
            scale: 0.65,
            child: Switch(
              
             padding: EdgeInsets.zero,
              inactiveThumbColor:Color(0xFF949D9E) ,
              activeTrackColor:AppColors.primaryColor ,
             
              value: isSave,
               
              onChanged: (bool value) 
              
              {setState(() {isSave=value;});},),
          ),
      
          
             
        ],
      ),
      ],
    );
    
  }
}