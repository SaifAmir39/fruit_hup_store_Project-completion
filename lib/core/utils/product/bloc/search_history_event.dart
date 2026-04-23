part of 'search_history_bloc.dart';

@immutable
abstract class SearchHistoryEvent {}
class AddtoSearchHistrot extends SearchHistoryEvent{

final String productnameHistroy;
AddtoSearchHistrot({required this.productnameHistroy});
}
class GetSearchHistoryEvent extends SearchHistoryEvent{

}
class SearchproductproductErrror extends SearchHistoryEvent{
final  String message;
  SearchproductproductErrror({required this.message});
}



// serach

class SearchLoedingState extends SearchHistoryEvent{}
class SerachProducteEvent extends SearchHistoryEvent{
final String text;
SerachProducteEvent({required this.text});
}
class OnPrassTedxtFailedEvent extends SearchHistoryEvent{}



class GetSerachproducteSucessState extends SearchHistoryEvent{
  final List<Productentity> serachproducts;
  GetSerachproducteSucessState({required this.serachproducts});
}
