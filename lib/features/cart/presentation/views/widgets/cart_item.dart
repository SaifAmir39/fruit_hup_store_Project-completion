import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          /// 🟢 Image
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F5F7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              "assets/images/watermelon_test.png",
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 16),

          /// 🟢 Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// 🟢 Title + Trash
                Row(
                  children: [
                    const Text(
                      'بطيخ',
                      style: TextStyle(
                        color: Color(0xFF05161B),
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/images/trash.svg",
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                /// 🟢 Weight
                const Text(
                  '3 كم',
                  style: TextStyle(
                    color: Color(0xFFF4A91F),
                    fontSize: 13,
                    fontFamily: 'Cairo',
                  ),
                ),

                const SizedBox(height: 8),

                /// 🟢 Price + Quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '60 جنيه',
                      style: TextStyle(
                        color: Color(0xFFF4A91F),
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    /// Quantity Widget
                    Container(
                      width: 140,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F5F7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// ➖
                            Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color:  Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.remove,
        size: 16,
        color: Colors.black,
      ),
    ),

                          const SizedBox(width: 6),

                          const Text(
                            '3',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(width: 6),

                          /// ➕
                            Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: const Color(0xFF1B5E37),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.add,
        size: 16,
        color: Colors.white,
      ),
    ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔥 Reusable Button
  
  }
