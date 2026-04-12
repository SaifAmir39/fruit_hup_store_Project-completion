part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class AddItemtocart extends CartState {}
class RemoveItemfromcart extends CartState {}
class CartUpdate extends CartState {}
class Cartemptaystate extends CartState{}