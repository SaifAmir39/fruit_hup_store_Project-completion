import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';

class CartItementity {
Productentity productentity;
int quantity;

CartItementity({required this.productentity,this.quantity =0});

caluclatetotalpriceitem(){
  return productentity.price * quantity;
}
caluclatetotalwieght(){
  return productentity.unitaMount * quantity;
}

incresquantity(){
  quantity++;
}
decresquantity(){
  if(quantity > 0){
    quantity--;
  }
}

}