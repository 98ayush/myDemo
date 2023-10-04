import 'package:demo/feature/cart/bloc/cart_bloc.dart';
import 'package:demo/feature/cart/ui/cart_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    BlocProvider.of<CartBloc>(context).add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        buildWhen: (previous,current){
          if (current is ItemDeleteMessageState)
            {
              return false;
            }
          return true;
        },
        listener: (context, state) {
          if (state is ItemDeleteMessageState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Item Deleted")));
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartSuccessState:
              final successState = state as CartSuccessState;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return CartTile(productDataModel: successState.products[index],);
                },
                itemCount: successState.products.length,
              );
            default: Center(child: Text("d"),);
          }
          return const SizedBox(child: Center(child: Text("cc")),);
          // switch (state.runtimeType) {
          //   case CartSuccessState:
          //     final successState = state as CartSuccessState;
          //     return ListView.builder(
          //         itemCount: successState.cartItems.length,
          //         itemBuilder: (context, index) {
          //           return CartTileWidget(
          //               cartBloc: cartBloc,
          //               productDataModel: successState.cartItems[index]);
          //         });
          //
          //   default:
          // }
          // return Container();
        },
      ),
    );
  }
}
