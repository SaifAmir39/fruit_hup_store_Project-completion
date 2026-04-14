import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';
import 'package:fruit_hup_store/features/checkout/presentation/manger/order_cubit.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/input_addres_textfailed.dart';

class AddressSection  extends StatefulWidget{
  const AddressSection({Key? key, }) : super(key: key);
  @override
  State<AddressSection> createState() => AddressSectionState();
}

class AddressSectionState extends State<AddressSection> {
  bool isSave=false;
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  TextEditingController citycontroller=TextEditingController();
  TextEditingController floorcontroller=TextEditingController();
  
  bool valdatio(){
    if(namecontroller.text.isEmpty||emailcontroller.text.isEmpty||addresscontroller.text.isEmpty||citycontroller.text.isEmpty||floorcontroller.text.isEmpty){
      return false;
    }else{
      BlocProvider.of<OrderCubit>(context).getAddres(
   
        address: AddressEntiti(
          name: namecontroller.text,
          email: emailcontroller.text,
          address: addresscontroller.text,
          city: citycontroller.text,
        numberofapartment: floorcontroller.text
        )
      );
      return true;
      
    }
  }
  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        InputAddresTextfailed(hintText: "الاسم كامل",
        controller: namecontroller,
        ),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "البريد الإلكتروني",
         controller: emailcontroller,
         ),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "العنوان",
         
         controller: addresscontroller,
         ),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "المدينه",
         controller: citycontroller,
         ),
        SizedBox(height: 8,),
         InputAddresTextfailed(hintText: "رقم الطابق , رقم الشقه ..",
         controller: floorcontroller,),
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