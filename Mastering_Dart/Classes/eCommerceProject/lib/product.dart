class Product {
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;

  String get displayName => '$name \$$price';
  int get showId => id;
}

//smallest buyable entity that has a constructor with named arguments used to create products in the const cart
