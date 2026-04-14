part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class AddorderLoedingstate extends OrderState {}
class AddordersucessState extends OrderState {

}
class AddorderfailerState extends OrderState {
 final String errmessage;
  AddorderfailerState({required this.errmessage});
}