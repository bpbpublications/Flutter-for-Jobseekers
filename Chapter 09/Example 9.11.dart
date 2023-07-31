import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const List<Item> inventory = [
  Item(name: "Shirt", cost: 12.99),
  Item(name: "Shoes", cost: 120.00),
  Item(name: "Pants", cost: 63.74),
  Item(name: "Hat", cost: 8.23),
];

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
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: inventory.length,
          itemBuilder: (BuildContext context, int i) => Card(
            child: ListTile(
              title: Text(inventory[i].name),
              subtitle: Text('\$${inventory[i].cost.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // TODO: Add the item to the shopping cart.
                },
              ),
            ),
          ),
        ),
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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Text(
          'Shopping Cart',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TODO: Display the total number of items in the cart
            Text('Items in Cart: '),
            // TODO: Display the total cost of all items in the cart
            Text('Total Cost: '),
            OutlinedButton.icon(
              label: const Text('Clear cart'),
              icon: const Icon(Icons.remove_shopping_cart),
              onPressed: () {
                // TODO: Add a "clear cart" handler
              },
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          // TODO: Figure out how many unique items are in our cart
          itemCount: 0,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              // TODO: Figure out how many of a specific item are in our cart
              leading: Text(''),
              // TODO: Display the item's name
              title: Text(''),
              // TODO: Display the item's price
              subtitle: Text(''),
            ),
          ),
        ),
      ],
    );
  }
}

class ShoppingCartInheritedWidget extends InheritedWidget {
  final List<Item> itemsInCart;
  final ValueChanged<List<Item>> onListChanged;
  @override
  const ShoppingCartInheritedWidget({
    Key? key,
    required Widget child,
    required this.itemsInCart,
    required this.onListChanged,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ShoppingCartInheritedWidget oldWidget) {
    return oldWidget.itemsInCart != itemsInCart ||
        oldWidget.onListChanged != onListChanged;
  }

  static ShoppingCartInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ShoppingCartInheritedWidget>();
  }
}

class _MyAppState extends State<MyApp> {
  List<Item> _itemsInCart = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShoppingCartInheritedWidget(
            itemsInCart: _itemsInCart,
            onListChanged: (List<Item> items) => onCartUpdated,
            child: ListView(
              children: [
                Inventory(),
                ShoppingCart(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCartUpdated(List<Item> items) => setState(() {
        _itemsInCart = items;
      });
}
