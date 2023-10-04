import 'package:demo/data/item_carts.dart';
import 'package:demo/feature/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/feature/cart/ui/cart_page.dart';
import 'package:demo/feature/home/bloc/home_bloc.dart';
import 'package:demo/feature/home/ui/product_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeBloc>(context).add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        if (current is HomeProductItemCartedActionState) {
          return false;
        } else if (current is HomeNavigateToCartPageActionState) {
          return false;
        }
        return true;
      },
      listenWhen: (previous, current) {
        return true;
      },
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartPage()));
        } else if (state is HomeProductItemCartedActionState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Item Carted")));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case HomeLoadedSuccessState:
            final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                title: const Text('Ayush Grocery App'),
                actions: [
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          return Badge(
                            label: Text(cartItems.length.toString()),
                            child: IconButton(
                                onPressed: () {
                                  BlocProvider.of<HomeBloc>(context)
                                      .add(HomeCartButtonNavigateEvent());
                                  //    homeBloc.add(HomeCartButtonNavigateEvent());
                                },
                                icon: const Icon(Icons.shopping_bag_outlined)),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              body: ListView.builder(
                  itemCount: successState.products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                        productDataModel: successState.products[index]);
                  }),
            );
          case HomeErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
