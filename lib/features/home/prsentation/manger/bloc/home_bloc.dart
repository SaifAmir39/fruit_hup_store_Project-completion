
import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductRepo productRepo;
  HomeBloc({required this.productRepo}) : super(HomeInitial()) {

    on<GetProductesEvent>((event, emit) async {
      emit(HomeLoadingProductsState());
      final result = await productRepo.getAllProducts();
      result.fold(
        (failure) => emit(HomeErrorProductsState(errormassge: failure.massage)),
        (products) => emit(HomeProductsSucessState(products: products)),
      );
    });

    on<GetBustsalleingProductesEvent>((event, emit) async {
      emit(HomeLoadingProductsState());
      final result = await productRepo.getProductsBustsalleing();
      result.fold(
        (failure) => emit(HomeErrorProductsState(errormassge: failure.massage)),
        (products) => emit(HomeProductsBestSaleingSuccessState(products: products)),
      );
    });

  }
}