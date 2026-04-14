import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/input_addres_textfailed.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/pyment%20_way_iteam.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/save_cared.dart';

class PymeantSeaction  extends StatelessWidget{
final  TextEditingController textEditingNameOFCardController = TextEditingController();
final   TextEditingController textEditingNumberOFCardController = TextEditingController();
final    TextEditingController textEditingExpireOFCardController = TextEditingController();
final     TextEditingController textEditingcvvOFCardController = TextEditingController();
     
  @override
  Widget build(BuildContext context) {
   return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Text(
  'أختار طريقه الدفع المناسبه'+" : ",
  style: TextStyle(
    
    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
SizedBox(height: 16,),

Text(
    'من فضلك اختر طريقه الدفع المناسبه لك.',
    textAlign: TextAlign.right,
    style: TextStyle(
      color: const Color(0xFF616A6B) /* Grayscale-600 */,
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
      height: 1.60,
    ),
  ),
  SizedBox(height: 16,),
Row(
  children: [
    PymentWayIteam(Image: 'assets/images/Pay.svg', isVisa: false,),
    SizedBox(width: 16,),
    PymentWayIteam(Image: 'assets/images/Paypal.svg', isVisa: false,),
    SizedBox(width: 16,),
    PymentWayIteam(Image: 'assets/images/Mastercard.svg', isVisa: false,),
    SizedBox(width: 16,),
    PymentWayIteam(Image: 'assets/images/Visa.svg', isVisa: true,),
  ],
),
SizedBox(height: 16,),
InputAddresTextfailed(hintText: "رقم الكارت",controller:textEditingNameOFCardController ,),
SizedBox(height: 16,),
InputAddresTextfailed(hintText: "اسم صاحب الكارت",controller: textEditingNumberOFCardController,),
SizedBox(height: 16,),
Row(
  children: [
   SizedBox(
    width: 163,
    height: 56,
    child: InputAddresTextfailed(hintText: 'تاريخ الصلاحيه', controller: textEditingExpireOFCardController,),
   ),
   SizedBox(
    width: 16,
   ),
   SizedBox(
    width: 163,
    height: 56,
    child: InputAddresTextfailed(hintText: 'CVV', controller: textEditingcvvOFCardController,),
   )
  ],
),
SizedBox(height: 24,),
SaveCared(onchange: (bool value) {},),
    ],
   );
    
  }
}