part of 'signup_cubit_cubit.dart';

@immutable
abstract class SignupCubitState {}

class SignupCubitInitial extends SignupCubitState {}
class SignupCubitLodeing extends SignupCubitState{}
class SignupCubitSucess extends SignupCubitState{
 final Userentitie user ;
 SignupCubitSucess({required this.user});
  
}
class SignupCubitfailer extends SignupCubitState{

final String errormasge;

SignupCubitfailer({required this.errormasge});


}
