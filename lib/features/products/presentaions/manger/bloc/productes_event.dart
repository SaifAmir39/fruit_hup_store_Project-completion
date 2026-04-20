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
class SerachProducteEvent extends ProductesEvent{
final String text;
SerachProducteEvent({required this.text});
}
class OnPrassTedxtFailedEvent extends ProductesEvent{}
