part of 'favorites_bloc.dart';

@immutable
abstract class FavoritesState {}

class FavoritesInitial extends FavoritesState {}
class GetFavoritesSuccess extends FavoritesState {
   final List<Productentity> products;
  GetFavoritesSuccess({required this.products});
}
class GetFavoritesError extends FavoritesState {
  final String message;
  GetFavoritesError({required this.message});
}
class FavoritesLoading extends FavoritesState {}
class FavoritesisEmpty extends FavoritesState {}
class AddtoFavoritesSucessState extends FavoritesState {}
 
