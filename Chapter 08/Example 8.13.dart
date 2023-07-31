import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (settings) {
      if (settings.name == MessageScreen.routeName) {
        final args = settings.arguments as MessageScreenArguments;

        return MaterialPageRoute(
          builder: (context) {
            return MessageScreen(
              title: args.title,
              message: args.message,
            );
          },
        );
      }

      if (settings.name == CheckoutScreen.routeName) {
        final args = settings.arguments as CheckoutScreenArguments;

        return MaterialPageRoute(
          builder: (context) {
            return CheckoutScreen(
              shoppingCart: args.shoppingCart,
            );
          },
        );
      }

      assert(false, 'Need to implement ${settings.name}');
      return null;
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
  final List<Map<StoreItem, int>>? shoppingCart;

  const CheckoutScreen({Key? key, this.shoppingCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: shoppingCart?.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(shoppingCart?[index].keys.first.name),
              subtitle: Text(
                  '${shoppingCart?[index].values.first} × ${shoppingCart?[index].keys.first.price}'),
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
