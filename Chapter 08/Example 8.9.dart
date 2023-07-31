class CheckoutScreenArguments {
  final List<Map<StoreItem, int>> shoppingCart;

  const CheckoutScreenArguments(this.shoppingCart);
}

class StoreItem {
  final String name;
  final double price;

  const StoreItem({required this.name, required this.price});
}
