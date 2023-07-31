import 'package:flutter/material.dart';

import 'packge:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ShoppingCartCubit(),
      child: const MyApp(),
    ),
  );
}

const List<Item> inventory = [
  Item(name: "Shirt", cost: 12.99),
  Item(name: "Shoes", cost: 120.00),
  Item(name: "Pants", cost: 63.74),
  Item(name: "Hat", cost: 8.23),
];

class CartState {
  final List<Item> itemsInCart;

  CartState(this.itemsInCart);
}

class Inventory extends StatelessWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Text(
          'Inventory',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        // TODO: Update to use Cubit
        // ListView.builder(
        //   shrinkWrap: true,
        //   physics: const ClampingScrollPhysics(),
        //   itemCount: inventory.length,
        //   itemBuilder: (BuildContext context, int i) => Card(
        //     child: ListTile(
        //       title: Text(inventory[i].name),
        //       subtitle: Text('\$${inventory[i].cost.toStringAsFixed(2)}'),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.add_shopping_cart),
        //         onPressed: () => cart.add(inventory[i]),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class Item {
  final double cost;
  final String name;

  const Item({
    required this.cost,
    required this.name,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              Inventory(),
              ShoppingCart(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartCubit, CartState>(
      builder: (BuildContext context, CartState cart) {
        return ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Text(
              'Shopping Cart',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            // TODO: Update to use Cubit
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text('Items in Cart: ${cart.itemsInCart.length}'),
            //     Text('Total Cost: \$${cart.totalCost.toStringAsFixed(2)}'),
            //     OutlinedButton.icon(
            //       label: const Text('Clear cart'),
            //       icon: const Icon(Icons.remove_shopping_cart),
            //       onPressed: () => Provider.of<ShoppingCartProvider>(
            //         context,
            //         listen: false,
            //       ).emptyCart(),
            //     ),
            //   ],
            // ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: const ClampingScrollPhysics(),
            //   itemCount: cart.uniqueItemsInCart.length,
            //   itemBuilder: (context, i) => Card(
            //     child: ListTile(
            //       leading: Text(
            //         '${cart.itemsInCart.where((element) => element == cart.uniqueItemsInCart[i]).length} ×',
            //       ),
            //       title: Text(
            //         cart.itemsInCart
            //             .firstWhere(
            //                 (element) => element == cart.uniqueItemsInCart[i])
            //             .name,
            //       ),
            //       subtitle:
            //           Text('\$${cart.itemsInCart[i].cost.toStringAsFixed(2)}'),
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}

class ShoppingCartCubit extends Cubit<CartState> {
  ShoppingCartCubit() : super(CartState([]));

  double get totalCost {
    double price = 0;
    for (Item item in state.itemsInCart) {
      price += item.cost;
    }

    return price;
  }

  List<Item> get uniqueItemsInCart {
    final List<Item> unique = [];
    for (Item item in state.itemsInCart) {
      if (!unique.contains(item)) {
        unique.add(item);
      }
    }
    return unique;
  }

  void add(Item item) {
    final List<Item> updatedCart = state.itemsInCart..add(item);

    emit(CartState(updatedCart));
  }

  void clearCart() {
    emit(CartState([]));
  }
}
