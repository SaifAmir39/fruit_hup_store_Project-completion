part of 'sign_in_cubit.dart';


abstract class SignInState {}

class SignInInitial extends SignInState {}
class SignInloading extends SignInState {}
class SignInsucess extends SignInState {
final Userentitie userentitie;

SignInsucess({required this.userentitie});


}
class SignInfailer extends SignInState {
final  String errormassge;

SignInfailer({required this.errormassge});


}


