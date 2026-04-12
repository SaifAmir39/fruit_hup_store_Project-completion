import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/cart/presentation/manger/cart_cubit.dart';
import 'package:fruit_hup_store/features/products%20detailes/presentation/widgets/descations_product.dart';

class ProductsViweBody extends StatefulWidget {
 final Productentity product;
  ProductsViweBody({required this.product});

  @override
  State<ProductsViweBody> createState() => _ProductsViweBodyState();
}

class _ProductsViweBodyState extends State<ProductsViweBody> {
  @override
  Widget build(BuildContext context) {
    var catcubit=BlocProvider.of<CartCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
            height:MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            child:
                    Center(
                  child: Image.network(
                    fit: BoxFit.fitWidth,
                    widget.product.image,
                      errorBuilder: (context, error, stackTrace) {
                          return Image.asset("assets/images/watermelon_test.png");
                        },
                    ),
                ),
             
          ),
          Row(
         
         
          children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 4,
          children: [
            Text(
              widget.product.name,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
            
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${widget.product.price.round()} جنية ',
                      style: TextStyle(
                        color: const Color(0xFFF4A91F) /* Orange-500 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: '/',
                      style: TextStyle(
                        color: const Color(0xFFF8C76D) /* Orange-300 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: const Color(0xFFF4A91F) /* Orange-500 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 1.70,
                      ),
                    ),
                    TextSpan(
                      text: 'الكيلو',
                      style: TextStyle(
                        color: const Color(0xFFF8C76D) /* Orange-300 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 1.70,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            catcubit.decreasetocart(widget.product);
            setState(() {
              
            });
          },
          child: Container(
            width: 36,
            height: 36,
            decoration: ShapeDecoration(
          color: const Color(0xFFF3F5F7),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFFF1F1F5),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
            ),
            child: Icon(
          Icons.remove,
          color: const Color(0xFF969899), 
          size: 20,
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          '${BlocProvider.of<CartCubit>(context).cartEntiti.getquantity(widget.product)}',
          textAlign: TextAlign.center,
          style: TextStyle(
        color: const Color(0xFF06140C) /* Green1-950 */,
        fontSize: 16,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            BlocProvider.of<CartCubit>(context).addtocart(widget.product);
            setState(() {
              
            });
          },
          child: Container(
            width: 36,
            height: 36,
            child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 36,
                height: 36,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1B5E37) /* Green1-500 */,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: const Color(0xFFFFFFFF) /* White */,
                  size: 20,
                ),
              ),
            ),
          ],
            ),
          ),
        )
        
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
        Icon(
          Icons.star,
          color: const Color(0xFFF4A91F) /* Orange-500 */,
          size: 24,
        ),
          SizedBox(width: 8,),
          Text(
          '4.5',
          style: TextStyle(
        color: const Color(0xFF111719),
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w600,
        height: 1.70,
          ),
        ),
        SizedBox(width: 8,),
          Text(
            "(30+)",
            style: TextStyle(
              color: const Color(0xFF9796A1),
              fontSize: 14,
              fontFamily: 'IBM Plex Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 8,),
          Text(
          'المراجعه',
          style: TextStyle(
        color: const Color(0xFF1B5E37) /* Green1-500 */,
        fontSize: 13,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
          ),
        ),
          ],
        ),
        SizedBox(height: 16,),
        SizedBox(
          width: 330,
          child: Text(
            widget.product.description,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: const Color(0xFF969899),
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 1.70,
            ),
          )
        ),
        SizedBox(height: 16,),
             GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        childAspectRatio: 163/80,
             ), children: [
              DescriptionsProduct(title: "${widget.product.expirationsMountes} شهر", subtitle: 'الصلاحيه', image: 'assets/images/Experation.svg', isreviwe: false,),
              DescriptionsProduct(title: '100%', subtitle:widget.product.isOrganic ? 'محلول' : 'اوجانيك', image: 'assets/images/Orginc.svg', isreviwe: false,),
              DescriptionsProduct(title: '4.8 ', subtitle: 'Reviews', image: "assets/images/Rateing.svg", isreviwe: true,),
              DescriptionsProduct(title: '${widget.product.numberofcaliores}', subtitle: '${widget.product.unitaMount} جرام', image: "assets/images/cailroes.svg", isreviwe: false,),
             ],),
           SizedBox(height: 24,),
           SafeArea(
            bottom: true,
            child: Customebottun(onpressed: (){
              BlocProvider.of<CartCubit>(context).addtocart(widget.product);
            }, title: "أضف الي السلة")),
           SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
} 