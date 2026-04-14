import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';

class ShaipingAddresModle {
  
  String ? name;
  String? email;
  String? address;
  String? city;
  String?numberofapartment;

  ShaipingAddresModle({this.name,this.email,this.address,this.city,this.numberofapartment});

factory ShaipingAddresModle.fromentitis(AddressEntiti addressEntiti){
  return ShaipingAddresModle(
    name: addressEntiti.name,
    email: addressEntiti.email,
    address: addressEntiti.address,
    city: addressEntiti.city,
    numberofapartment: addressEntiti.numberofapartment
  );
}

 tojson(){
  return{
    'name':name,
    'email':email,
    'address':address,
    'city':city,
    'numberofapartment':numberofapartment,
  };
}

}