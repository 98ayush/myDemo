part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}
class CartInitialEvent extends CartEvent{}
class CartItemRemoveEvent extends CartEvent{
  final ProductDataModel product;

  CartItemRemoveEvent({required this.product});
}
