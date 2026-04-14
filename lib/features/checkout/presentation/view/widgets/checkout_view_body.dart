import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/checkout/presentation/manger/order_cubit.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/Address_Section.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/active_Step.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/in_active_step.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/shaping_sections.dart';

class CheckoutViewBody extends StatefulWidget {
  final CartEntiti cartEntiti;
  
  const 
  CheckoutViewBody({super.key, required this.cartEntiti});
  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
final PageController pageController =PageController();
final GlobalKey<ShapingSectionsState> shapingKey = GlobalKey();
final GlobalKey<AddressSectionState> addressKey = GlobalKey();
int currentPage = 0;

@override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    BlocProvider.of<OrderCubit>(context).getOrderitems( items: widget.cartEntiti);
    
  }
 final List<String> steps = [
  "الشحن",
  "العنوان",
  "الدفع",
  "المراجعة",
  ];

  Widget build(BuildContext context) {
List<Widget> pages = [
  ShapingSections(key: shapingKey,),
  AddressSection(key: addressKey,),
  Container(color: Colors.blue,),
  Container(color: Colors.yellow,),
];
   
   return Scaffold(
    appBar: bulid_Appbar(title: steps[currentPage], context: context),
body:  Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0),
     child: Column(
      
      children: [
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(steps.length, (index) {
        if (index == currentPage) {
          return  ActiveStep(title: steps[index]);
        } 
        else if (index < currentPage) {
          return  ActiveStep(title: steps[index], );
        }
        else {
          return inActiveStep(number: '${index + 1}', title: steps[index],);
        }
      }),
     ),
     Expanded(
      flex: 3,
      child: PageView.builder(
        
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        
        return Padding(
          padding: const EdgeInsets.only(top: 32),
          child: pages[index],
        );
        
      }, itemCount: pages.length,),
     ),
    Customebottun(
  onpressed: () {
    bool canGo = false;

    if (currentPage == 0) {
      canGo = shapingKey.currentState?.valdton() ?? false;
    } else if (currentPage == 1) {
      canGo = addressKey.currentState?.valdatio() ?? false;
    } else {
      canGo = true;
    }

    if (canGo) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      print("فيه مشكلة ❌");
    }
  },
  title: "التالي",
),
     SizedBox(height: 32,),
      ],
     ),
     
   ) ,
   );
   
   
 
    
  }
}