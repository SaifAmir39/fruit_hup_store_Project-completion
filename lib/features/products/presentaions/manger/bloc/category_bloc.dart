
import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ProductRepo productRepo;
  CategoryBloc({required this.productRepo}) : super(CategoryInitial()){
 on<GetCategoryEvent>((event, emit) async {
      emit(CategoryLoadingState());
      final result = await productRepo.getCategory();
      result.fold(
        (failure) => emit(ErrorCategoryState(errormassge: failure.massage)),
        (products) => emit(GetCategorySuccessState(products: products)),
      );
    });
  
}
}