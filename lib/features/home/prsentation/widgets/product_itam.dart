import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/cart/presentation/manger/cart_cubit.dart';

class Productitem extends StatefulWidget {
 final void Function() onTap;
 final Productentity product;
  const Productitem({super.key, required this.onTap, required this.product});

  @override
  State<Productitem> createState() => _ProductitemState();
}

class _ProductitemState extends State<Productitem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFF3F5F7),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Icon(
                 
                   
                    isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                    color: isFavorite ? Colors.red : Colors.black,
                  
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  SizedBox(height: 20),
      
                   Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Image.network(
                        widget.product.image,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset("assets/images/watermelon_test.png");
                        },
                      ),
                    ),
                      ),
                  
                  ListTile(
                    title: Text(
                      "${widget.product.name}",
                      style: TextStyles.semiBold16,
                      textAlign: TextAlign.right,
                    ),
      
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${widget.product.price.round()} جنية ',
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
                        onPressed: () {
                          BlocProvider.of<CartCubit>(context).addtocart(widget.product);
                        },
                        icon: Icon(Icons.add, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
