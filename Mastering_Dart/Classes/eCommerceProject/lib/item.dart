import 'product.dart';

class Item {
  const Item({required this.product, this.quantity = 1}); //Item has a product and the quantity
  final Product product;
  final int quantity;
  double get price => quantity * product.price;
  @override
  String toString() {
    return '$quantity * ${product.name} : \$$price';
  }
}
