class Userentitie {
final  String name;
 final String email;

final String udi;

 Userentitie({required this.email,required this.name,required this.udi});

toMap() {
  return {
    'name': name,
    'email': email,
    'udi': udi,
  };
}
}