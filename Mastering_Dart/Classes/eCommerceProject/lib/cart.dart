import 'item.dart';
import 'product.dart';

class Cart {
  final Map<int, Item> _items =
      {}; //this map will contain the ID's of the products that are bought and the Item{Product and quantity}
  void addProduct(Product product) {
    final item = _items[product
        .id]; //create a key: value for the product recieved the key will be the product.id and value will be Object:Item(product, quantity)//null is returned if item doesn't exist
    if (item == null) {
      _items[product.id] =
          Item(product: product, quantity: 1); //if product is selected for the first time then make item quantity 1
    } else {
      _items[product.id] = Item(
          product: product,
          quantity:
              item.quantity + 1); //assigning the new quantity to the product id if the value for the key already exists
    }
  }

  bool get isEmpty => _items.isEmpty; //used to show empty if cart is viewed empty

  double total() => _items.values.map((e) => e.price).reduce((value, element) => value + element);
  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is Empty';
    }
    final itemizedList =
        _items.values.map((e) => e.toString()).join('\n'); //calling toString() on each each item value of the Items map
    return '---------\n$itemizedList\nTotal: \$${total()}\n---------';
  }
}
