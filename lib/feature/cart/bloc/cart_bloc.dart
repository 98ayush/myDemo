import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo/data/item_carts.dart';
import 'package:demo/feature/home/model/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartItemRemoveEvent>(cartItemRemoveEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(products: cartItems));
  }

  FutureOr<void> cartItemRemoveEvent(
      CartItemRemoveEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.product);
    emit(CartSuccessState(products: cartItems));
    emit(ItemDeleteMessageState());
  }
}
