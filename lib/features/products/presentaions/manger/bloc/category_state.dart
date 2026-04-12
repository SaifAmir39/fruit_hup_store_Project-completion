part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}
class CategoryLoadingState extends CategoryState{}
class GetCategorySuccessState extends CategoryState{
  final List<Productentity> products;
  GetCategorySuccessState({required this.products});
}
class ErrorCategoryState extends CategoryState{
  final String errormassge;
  ErrorCategoryState( {required this.errormassge});
}