import 'package:flutter/material.dart';

import 'packge:provider/provider.dart';

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
  final Function(List<Item>) onCartUpdated;

  const Inventory(this.onCartUpdated, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> currentCart =
        ShoppingCartInheritedWidget.of(context)!.itemsInCart;

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
                  currentCart.add(inventory[i]);
                  onCartUpdated(currentCart);
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
  final Function(List<Item>) onCartUpdated;

  const ShoppingCart(this.onCartUpdated, {Key? key}) : super(key: key);

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
            Text('Items in Cart: ${currentCart.itemsInCart.length}'),
            Text('Total Cost: \$${currentCart.totalCost.toStringAsFixed(2)}'),
            OutlinedButton.icon(
              label: const Text('Clear cart'),
              icon: const Icon(Icons.remove_shopping_cart),
              onPressed: () => onCartUpdated([]),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: currentCart.uniqueItemsInCart.length,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              leading: Text(
                currentCart.itemsInCart
                        .where((element) =>
                            element == currentCart.uniqueItemsInCart[i])
                        .length
                        .toString() +
                    '×',
              ),
              title: Text(
                currentCart.itemsInCart
                    .firstWhere((element) =>
                        element == currentCart.uniqueItemsInCart[i])
                    .name,
              ),
              subtitle: Text(
                  '\$${currentCart.itemsInCart[i].cost.toStringAsFixed(2)}'),
            ),
          ),
        ),
      ],
    );
  }
}

class ShoppingCartProvider extends ChangeNotifier {
  final List<Item> _itemsInCart = [];

  UnmodifiableListView<Item> get itemsInCart =>
      UnmodifiableListView(_itemsInCart);

  double get totalCost {
    double price = 0;
    for (Item item in _itemsInCart) {
      price += item.cost;
    }

    return price;
  }

  List<Item> get uniqueItemsInCart {
    final List<Item> unique = [];
    for (Item item in _itemsInCart) {
      if (!unique.contains(item)) {
        unique.add(item);
      }
    }
    return unique;
  }

  void add(Item item) {
    _itemsInCart.add(item);
    notifyListeners();
  }

  void emptyCart() {
    _itemsInCart.clear();
    notifyListeners();
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
                Inventory(onCartUpdated),
                ShoppingCart(onCartUpdated),
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
