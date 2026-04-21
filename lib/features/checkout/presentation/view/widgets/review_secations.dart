import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/checkout/presentation/manger/check_out_cubit.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/pyment%20_way_iteam.dart';

class ReviewSecations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
 var   ordercunite =BlocProvider.of<CheckoutCubit>(context);
   return Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   
    children: [
      Text(
        textAlign: TextAlign.start,
          'ملخص الطلب : ',
          style: TextStyle(
            color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
  width: 342,
  height: 100,
  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
  clipBehavior: Clip.antiAlias,
  decoration: ShapeDecoration(
    color: const Color(0x7FF2F3F3),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  ),
  child:Row(
    children: [
      Column(
children: [
  Text(
                          '${ordercunite.order.orderItems!.calculatetotalprice()} جنيه',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                            fontSize: 16,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                          ),
                        ),
                        SizedBox(height: 8,),
                         Text(
                          '30جنية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF4E5556) /* Grayscale-500 */,
                            fontSize: 13,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            height: 1.70,
                          ),
                        ),
                        SizedBox(height: 8,),
                         Text(
              '${ordercunite.order.orderItems!.calculatetotalprice()+30} جنيه',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
],
      ),
      
      Spacer(),
      Column(
        children: [

          Text(
                    'المجموع الفرعي :',
                    style: TextStyle(
                      color: const Color(0xFF4E5556) /* Grayscale-500 */,
                      fontSize: 13,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
          'التوصيل  :',
          style: TextStyle(
            color: const Color(0xFF4E5556) /* Grayscale-500 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w400,
            height: 1.60,
          ),
        ),
      
       
        
        SizedBox(
          height: 8,
        ),
         Text(
        'الكلي',
        style: TextStyle(
          color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
      ),
              
         
        ],
      ),

    ],
  ),

  
  
       
        ),
        SizedBox(
            height: 16,
          ),

         Text(
          'يرجي تأكيد  طلبك',
          style: TextStyle(
            color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
          ),
        ),   
          SizedBox(
            height: 16,
          ),
          Container(
            width: 345,
            height: 100,
  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
  clipBehavior: Clip.antiAlias,
  decoration: ShapeDecoration(
    color: const Color(0x7FF2F3F3),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  ),
  child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
           Text(
  'وسيلة الدفع',
  style: TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
Spacer(),
Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  spacing: 4,
  children: [
    Text(
      'تعديل',
      style: TextStyle(
        color: const Color(0xFF949D9E) /* Grayscale-400 */,
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w600,
        height: 1.70,
      ),
    ),
    Container(
     
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Icon(
        
        Icons.edit_outlined,
          color: const Color(0xFF949D9E)
        
        ),
    ),
  ],
),

        ],
      ),
    SizedBox(height: 16,),
    Row(
      children: [
         Text(
        '**** **** **** 6522',
        style: TextStyle(
          color: const Color(0xFF4E5556) /* Grayscale-500 */,
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 1.40,
        ),
      ),
      SizedBox(
        width: 30,
      ),
     PymentWayIteam(isVisa: true, Image: 'assets/images/Visa.svg',),
      
      
      ],
    ),

    ],
  ),
          ),
          SizedBox(
            height: 16,
          ),
           Container(
            width: 345,
            height: 85,
  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
  clipBehavior: Clip.antiAlias,
  decoration: ShapeDecoration(
    color: const Color(0x7FF2F3F3),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  ),
  child: Column(
    children: [
      Row(
            children: [
               Text(
      'عنوان التوصيل',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
      ),
      ),
      Spacer(),
      Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 4,
      children: [
        Text(
          'تعديل',
          style: TextStyle(
            color: const Color(0xFF949D9E) /* Grayscale-400 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            height: 1.70,
          ),
        ),
        Container(
         
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Icon(
            
            Icons.edit_outlined,
              color: const Color(0xFF949D9E)
            
            ),
        ),
      ],
      ),
      
            ],
          ),
    
    SizedBox(height: 16,),
    Row(
      children: [
        Icon(
        Icons.location_on_outlined,
        color: const Color(0xFF4E5556),),
Spacer(),
          Text(
  '${ordercunite.order.addressEntiti!.address}',
  textAlign: TextAlign.right,
  style: TextStyle(
    color: const Color(0xFF4E5556) /* Grayscale-500 */,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
    height: 1.40,
  ),
),
          
      ],
    )
  

    
    ],

  ),
          ),
    
    ],
   );
    
  }

}