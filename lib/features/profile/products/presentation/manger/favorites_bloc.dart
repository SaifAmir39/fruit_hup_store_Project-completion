import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  ProductRepo productRepo;
  List<Productentity> favoriteProducts = [];
  
  FavoritesBloc({required this.productRepo}) : super(FavoritesInitial()) {
    on<GetFavoritesEvent>((event, emit)async {
      emit(FavoritesLoading());
      var result = await productRepo.getFavoritesProducts();
      result.fold((l) => emit(GetFavoritesError(message: l.massage)), 
      (r) {
        favoriteProducts = r;
        if(r.isEmpty){
          emit(FavoritesisEmpty());
        } else{
          emit(GetFavoritesSuccess(products: r));
        }
      });
    });

    on<AddtoFavoritesEvent>((event, emit)async {
      var result = await productRepo.addProducttoFavorites(productentity: event.productEntities);
      result.fold((l) {
        print(l.massage.toString());
        emit(GetFavoritesError(message: l.massage));
      },
      (r) {
        // Add to local list if not already there
        if(!favoriteProducts.any((p) => p.code == event.productEntities.code)) {
          favoriteProducts.add(event.productEntities);
        }
        // Emit success with updated list
        if(favoriteProducts.isEmpty){
          emit(FavoritesisEmpty());
        } else {
          emit(GetFavoritesSuccess(products: favoriteProducts));
        }
      });
    }); 
  }
  
  bool isFavorite(String productCode) {
    return favoriteProducts.any((p) => p.code == productCode);
  }
}
  

