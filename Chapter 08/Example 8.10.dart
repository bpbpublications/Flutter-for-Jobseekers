const StoreItem shirt = StoreItem(name: "Super Rad Shirt", price: 12.99);

const StoreItem shoes = StoreItem(name: "Comfy Shoes", price: 34.99);

const CheckoutScreenArguments shoppingCart = CheckoutScreenArguments(
  [
    {shirt: 4},
    {shoes: 1},
  ],
);

class CheckoutScreenArguments {
  final List<Map<StoreItem, int>> shoppingCart;

  const CheckoutScreenArguments(this.shoppingCart);
}

class StoreItem {
  final String name;
  final double price;

  const StoreItem({required this.name, required this.price});
}
