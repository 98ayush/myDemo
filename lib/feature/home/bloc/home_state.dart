part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}
class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}
class HomeErrorState extends HomeState {}


class HomeNavigateToCartPageActionState extends HomeState {}


class  HomeProductItemCartedActionState extends HomeState {}
