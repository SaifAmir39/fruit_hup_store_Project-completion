part of 'favorites_bloc.dart';

@immutable
abstract class FavoritesEvent {}
class AddtoFavoritesEvent extends FavoritesEvent{
  final Productentity productEntities;
  AddtoFavoritesEvent({required this.productEntities});
}
class GetFavoritesEvent extends FavoritesEvent{
 
}

