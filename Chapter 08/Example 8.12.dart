import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MainScreen(),
      CheckoutScreen.routeName: (context) => const CheckoutScreen(),
    },
  ));
}

const StoreItem shirt = StoreItem(name: "Super Rad Shirt", price: 12.99);

const StoreItem shoes = StoreItem(name: "Comfy Shoes", price: 34.99);

const CheckoutScreenArguments shoppingCart = CheckoutScreenArguments(
  [
    {shirt: 4},
    {shoes: 1},
  ],
);

class CheckoutScreen extends StatelessWidget {
  static const routeName = '/checkout';

  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CheckoutScreenArguments;

    return Scaffold(
      body: ListView.builder(
        itemCount: args.shoppingCart.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(args.shoppingCart[index].keys.first.name),
              subtitle: Text(
                  '${args.shoppingCart[index].values.first} × ${args.shoppingCart[index].keys.first.price}'),
            )),
      ),
    );
  }
}

class CheckoutScreenArguments {
  final List<Map<StoreItem, int>> shoppingCart;

  const CheckoutScreenArguments(this.shoppingCart);
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is the main screen of my application'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Checkout'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              CheckoutScreen.routeName,
              arguments: shoppingCart,
            );
          },
        ),
      ),
    );
  }
}

class StoreItem {
  final String name;
  final double price;

  const StoreItem({required this.name, required this.price});
}
