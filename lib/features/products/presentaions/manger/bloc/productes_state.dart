part of 'productes_bloc.dart';

@immutable
abstract class ProductesState {}

class ProductesInitial extends ProductesState {}
class ProductsSucessState extends ProductesState{
  final List<Productentity> products;
  ProductsSucessState({required this.products});
}
class ProductsLoadingState extends ProductesState{}

class GetProductesFiltersSucessState extends ProductesState{
  final List<Productentity> products;
  GetProductesFiltersSucessState({required this.products});
}
class ErrorProductsState extends ProductesState{
  final String errormassge;
  ErrorProductsState( {required this.errormassge});
}

