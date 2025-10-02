import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/loin_viwe.dart';
import 'package:fruit_hup_store/features/on_boardin/presentation/Viwes/widgets/on_bordaing_pageviwe.dart';

class OnBoaradingBody extends StatefulWidget {
  const OnBoaradingBody({super.key});

  @override
  State<OnBoaradingBody> createState() => _OnBoaradingBodyState();
}

class _OnBoaradingBodyState extends State<OnBoaradingBody> {
  late PageController pageController;
  var currnutpage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currnutpage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: OnBordaingPageviwe(pageController: pageController)),
          SizedBox(height: 75),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,

              color: currnutpage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 29),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Visibility(
              visible: currnutpage == 1 ? true : false,

              child: Customebottun(
                onpressed: () {
                  Navigator.pushReplacementNamed(context, LoinViwe.routeName);
                },
                title: "ابدأ الان",
              ),
            ),
          ),

          SizedBox(height: 43),
        ],
      ),
    );
  }
}
