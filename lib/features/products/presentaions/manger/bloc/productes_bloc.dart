
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'productes_event.dart';
part 'productes_state.dart';

class ProductesBloc extends Bloc<ProductesEvent, ProductesState> {
    final ProductRepo productRepo;

  
  ProductesBloc({required this.productRepo}) : super(ProductesInitial()) {;
  on<GetProductesinproductviweEvent>((event, emit) async {
      emit(ProductsLoadingState());
      final result = await productRepo.getAllProducts();
      result.fold(
        (failure) => emit(ErrorProductsState(errormassge: failure.massage)),
        (products) => emit(ProductsSucessState(products: products)),
      );
    });
    

    on<GetProductesByFilters>((event, emit) async {
      emit(ProductsLoadingState());
      final result = await productRepo.getProductesByFilter(minimum: event.minimum, maximum: event.maximum,orderby:  event.orderby);
      result.fold(
        (failure) => emit(ErrorProductsState(errormassge: failure.massage)),
        (products) => emit(GetProductesFiltersSucessState(products: products)),
      );
    });
   
   
    }

    

  
}
