part of 'search_history_bloc.dart';

@immutable
abstract class SearchHistoryState {}

class SearchHistoryInitial extends SearchHistoryState {}

class GetSerarchHistroyLoadingState extends SearchHistoryState {}

class GetSerarchHistroyErrorState extends SearchHistoryState {
  final String errormassge;
  GetSerarchHistroyErrorState({required this.errormassge});
}

class GetSerarchHistroyEmptyState extends SearchHistoryState {}

class GetSerarchHistroySucessState extends SearchHistoryState {
  final List<String> products;
  GetSerarchHistroySucessState({required this.products});
}

class AddSearchHistorySucessState extends SearchHistoryState {}

class SerachHistoryError extends SearchHistoryState {
  final String errormassge;
  SerachHistoryError({required this.errormassge});
}

class ProductNotFoundinSearch extends SearchHistoryState {}
class SerachProductSucess extends SearchHistoryState {
  final List<Productentity> products;
  SerachProductSucess({required this.products});
}
class TextFailedisempty extends SearchHistoryState {}
class SerachLoading extends SearchHistoryState {}
