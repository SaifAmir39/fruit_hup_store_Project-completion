import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';

class OrderIteams extends StatefulWidget {
final  OrderEntiti  order;

  const OrderIteams({Key? key, required this.order}) : super(key: key);
  @override
  State<OrderIteams> createState() => _OrderIteamsState();
}

class _OrderIteamsState extends State<OrderIteams> {
 int getStatesOrder({required String state}) {
   switch (state) {
     case "pending":
       return 2;
     case "process":
       return 3;
     case "delivered":
       return 4;
     case "completed":
       return 5;
    
      
     default:
       return 0;
   }
 }
  
  
   bool isOpen=false;


   

  final List<String> steps = [
    "تتبع الطلب",
    "قبول الطلب",
    "تم شحن الطلب",
    "خرج للتوصيل",
    
  ];

 
  @override
  Widget build(BuildContext context) {
    
 return GestureDetector(
   onTap: (){
    setState(() {
      isOpen=!isOpen;
    });
   },
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Container(
        width: double.infinity,
        height: 110,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 19),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: const Color(0x7FF2F3F3)),
        child: Row(
          children: [
          Container(
          width: 66,
          height: 66,
          decoration: ShapeDecoration(
          color: const Color(0xFFEBF9F3) /* Green1-50 */,
          shape: OvalBorder(),
          ),
          child: SvgPicture.asset('assets/images/box.svg',
          color: const Color(0xFF1B5E37),
          ),
        ),
        SizedBox(width: 16,),
       Column(
        children: [
          Text(
        'طلب رقم :   ${widget.order.id!.substring(0, 10)}#',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
       ),
       SizedBox(height: 2,),
       Text(
        'تم الطلب :22 مارس ,2024',
        style: TextStyle(
          color: const Color(0xFF949D9E) /* Grayscale-400 */,
          fontSize: 11,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 1.40,
        ),
       ),
       SizedBox(height: 4,),
       
       Row(
        children: [
       Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'عدد الطلبات',
              style: TextStyle(
                color: const Color(0xFF949D9E) /* Grayscale-400 */,
                fontSize: 13,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w400,
                height: 1.60,
              ),
            ),
            TextSpan(
              text: ' : ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.30,
              ),
            ),
            TextSpan(
              text: '${widget.order.orderPorductes!.length}',
              style: TextStyle(
                color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                fontSize: 13,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
       ),
       SizedBox(
        width: 16,
       ),
       
       Text(
        'فيمة الطلب : ${widget.order.totalPrice}',
        style: TextStyle(
          color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
          fontSize: 13,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
       ),
        ],
       ),
       
       
       
        ],
       ),
        Spacer(),
       isOpen? Icon(
        Icons.keyboard_arrow_up,
        color: Color(0xFF0C0D0D),
        size: 32,
       ):
       
       Icon(
        Icons.keyboard_arrow_down,
        color: Color(0xFF0C0D0D),
        size: 32,
       ),
        
        ],)
       ),
      isOpen? SizedBox(
        height: 160,
         child: 
             EasyStepper(
              
              stepRadius: 5,
              activeStep:  getStatesOrder(state: widget.order.status!),
              direction: Axis.vertical,
              lineStyle: LineStyle(
                lineLength: 23,
                lineThickness: 2,
                lineType: LineType.normal,
                defaultLineColor: Colors.grey.shade300,
                finishedLineColor:const Color(0xFF1B5E37),
                
              ),
              stepShape: StepShape.circle,
              stepBorderRadius: 5,
              borderThickness: 2,
              padding: EdgeInsets.all(10),
             
              finishedStepBorderColor:const Color(0xFF1B5E37),
              titleTextStyle:  TextStyle(
                   color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                   fontSize: 13,
                   fontFamily: 'Cairo',
                   fontWeight: FontWeight.w600,
                   height: 1.70,
                 ),
                 unreachedStepIconColor: Colors.grey.shade300,
                unreachedStepTextColor:const Color(0xFF949D9E), 
              finishedStepTextColor: const Color(0xFF0C0D0D),
              finishedStepBackgroundColor: const Color(0xFF1B5E37),
             
              activeStepBorderColor: const Color(0xFF1B5E37),
              activeStepBackgroundColor: Colors.white,
             
              unreachedStepBorderColor: const Color(0xFF949D9E),
              unreachedStepBackgroundColor: Colors.white,
             
              showLoadingAnimation: true,
             
              steps: List.generate(steps.length, (index) {
                  return EasyStep(
                   customStep: Container(
                     width: 10,
                     height: 10,
                     decoration: BoxDecoration(
              color: index <= getStatesOrder(state: widget.order.status!)
                  ? Colors.green
                  : Colors.grey.shade300,
              shape: BoxShape.circle,
                     ),
                   ),
                   title:steps[index],
                   );
                   
              }),),
            ):SizedBox(), 
     ],
   ),
 );
   
  }
}