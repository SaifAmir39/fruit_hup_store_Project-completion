part of 'check_out_cubit.dart';

@immutable
abstract class CheckoutState {}

class OrderInitial extends CheckoutState {}

class AddorderLoedingstate extends CheckoutState {}
class AddordersucessState extends CheckoutState {

}
class AddorderfailerState extends CheckoutState {
 final String errmessage;
  AddorderfailerState({required this.errmessage});
}