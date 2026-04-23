import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'search_history_event.dart';
part 'search_history_state.dart';

class SearchHistoryBloc extends Bloc<SearchHistoryEvent, SearchHistoryState> {
  
  ProductRepo productRepo;
  SearchHistoryBloc({required this.productRepo}) : super(SearchHistoryInitial()) {
   
   // Get search history
   on<GetSearchHistoryEvent>((event, emit) async {
    
      final result = await productRepo.getsearchHistoryProduct(productnameHistroy: '');
      result.fold(
        (failure) => emit(SerachHistoryError(errormassge: failure.massage)),
        (products) {
          if (products.isEmpty) {
            emit(SerachHistoryError(errormassge: 'no data'));
          }
         else {
            emit(GetSerarchHistroySucessState(products: products));
         } 
        }
      );
    });
    // Add to search history
    on<AddtoSearchHistrot>((event, emit) async {
    
      final result = await productRepo.addsearchHistoryProduct(productnameHistroy: event.productnameHistroy);
      result.fold(
        (failure) =>  emit(SerachHistoryError(errormassge: 'cant add to the search data')),
        (products) {
         
       
            emit(AddSearchHistorySucessState());
         }
    );}
      );
      on<OnPrassTedxtFailedEvent>((event, emit) async {
      emit(TextFailedisempty());
    
    });
    // Search product 
     on<SerachProducteEvent>((event, emit) async {
      emit(SerachLoading());
      final result = await productRepo.SearchProduct(productname: event.text);
      result.fold(
        (failure) => emit(SerachHistoryError(errormassge: failure.massage)),
        (products) {
          if (products.isEmpty) {
            emit(ProductNotFoundinSearch());
          } 
         else {
            emit(SerachProductSucess(products: products));
           
         } 
        }
      );
    });
      
      
  }

  
}
