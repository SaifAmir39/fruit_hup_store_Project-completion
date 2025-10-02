import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/on_boardin/presentation/Viwes/widgets/Page%20Viwe_iteam.dart';

class OnBordaingPageviwe extends StatelessWidget {
  final PageController pageController;

  const OnBordaingPageviwe({required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,

      scrollDirection: Axis.horizontal,
      children: [
        PageviweIteam(
          isvisble:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              1,  

          image: Assets.imagesPageViewItem1Image,
          backgroungimage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \nمجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل \n على أفضل العروض والجودة العالية.",
          text: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("مرحبًا بك في ", style: TextStyles.bold23),
              Text(
                "Fruit",
                style: TextStyles.bold23.copyWith(color: Color(0xFF1B5E37)),
              ),
              Text(
                "HUB",
                style: TextStyles.bold23.copyWith(color: Color(0xFFf4A91f)),
              ),
            ],
          ),
        ),
        PageviweIteam(
          isvisble:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              1,
          image: Assets.imagesPageViewItem2Image,
          backgroungimage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على \nالتفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          text: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [Text("ابحث و تسوق", style: TextStyles.bold23)],
          ),
        ),
      ],
    );
  }
}
