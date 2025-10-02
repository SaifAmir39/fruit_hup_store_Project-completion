import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class Productitem extends StatelessWidget {
  const Productitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),

                 Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SvgPicture.asset(Assets.imagesPageViewItem2Image))),
                
                ListTile(
                  title: Text(
                    "بطيخ ",
                    style: TextStyles.semiBold16,
                    textAlign: TextAlign.right,
                  ),

                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF4A91F),
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF4A91F),
                          ),
                        ),
                        TextSpan(
                          text: ' الكيلو',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF4A91F),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF1B5E37),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white, size: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
