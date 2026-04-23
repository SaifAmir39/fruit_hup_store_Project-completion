part of 'productes_bloc.dart';

@immutable
abstract class ProductesEvent {}
class GetProductesinproductviweEvent extends ProductesEvent{}
class GetProductesByFilters extends ProductesEvent{


final double minimum;
final double  maximum;
final bool orderby;

GetProductesByFilters({required this.minimum,required this.maximum,required this.orderby});
}


