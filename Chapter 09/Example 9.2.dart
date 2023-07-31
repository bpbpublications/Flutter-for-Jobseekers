const List<Item> inventory = [
  Item(name: "Shirt", cost: 12.99),
  Item(name: "Shoes", cost: 120.00),
  Item(name: "Pants", cost: 63.74),
  Item(name: "Hat", cost: 8.23),
];

class Item {
  final double cost;
  final String name;

  const Item({
    required this.cost,
    required this.name,
  });
}
