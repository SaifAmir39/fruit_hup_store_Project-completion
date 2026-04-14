import 'package:fruit_hup_store/features/cart/domain/entitis/cart_item_entitis.dart';

class OrderProductesModle  {
 String name;
  double price;
  String description;
  String image;
  String code;
  int quantity;

  OrderProductesModle({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.code,
    required this.quantity,
  });


factory OrderProductesModle.fromentitis(CartItementity cartItementity){
  return OrderProductesModle(
    name: cartItementity.productentity.name,
    price: cartItementity.productentity.price,
    description: cartItementity.productentity.description,
    image: cartItementity.productentity.image,
    code: cartItementity.productentity.code,
    quantity: cartItementity.quantity
  );
  
  
}


tojson(){
  return{
    "name":name,
    "price":price,
    "description":description,
    "image":image,
    "code":code,
    "quantity":quantity
  };
}


}