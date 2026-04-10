part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoadingProductsState extends HomeState{}
class HomeProductsSucessState extends HomeState{
  final List<Productentity> products;
  HomeProductsSucessState({required this.products});
}
class HomeProductsBestSaleingSuccessState extends HomeState{
  final List<Productentity> products;
  HomeProductsBestSaleingSuccessState({required this.products});
}
class HomeErrorProductsState extends HomeState{
  final String errormassge;
  HomeErrorProductsState( {required this.errormassge});
}
