part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}
class GetProductesEvent extends HomeEvent{}
class GetBustsalleingProductesEvent extends HomeEvent{}
class OnTapTedxtFailedEvent extends HomeEvent{}
class SerachproducteEvenr extends HomeEvent{
  final String text;
  SerachproducteEvenr(this.text);
}