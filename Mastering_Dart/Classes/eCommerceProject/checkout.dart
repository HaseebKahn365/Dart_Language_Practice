import 'dart:io';

import 'lib/cart.dart';
import 'lib/product.dart';

const allProduct = [
  //a constant list of items in the shop
  Product(id: 1, name: 'Apples', price: 1.5),
  Product(id: 2, name: 'Oranges', price: 2.0),
  Product(id: 3, name: 'Pears', price: 3.0),
  Product(id: 4, name: 'Grapes', price: 4.0),
];

void main() {
  final cart = Cart(); //instantiating a cart
  while (true) {
    stdout.write('What do you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();
    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      if (checkOut(cart)) {
        break;
      }
    }
  }
}

bool checkOut(Cart cart) {
  //if true then breaks the while loop
  final total = cart.total();
  if (cart.isEmpty) {
    //isEmpty is defined for cart to check it its empty
    print('Cart is Empty');
    return false;
  } else {
    print('Total: \$$total'); //if not empty then print total and ask for cash
    stdout.write('Payment in Cash: ');
    final line = stdin.readLineSync();
    if (line == null || line.isEmpty) {
      return false;
    }
    final paid = double.tryParse(line);
    if (paid == null) {
      //if can't parse then invalid
      return false;
    }
    if (paid >= total) {
      //return the change
      final change = paid - total;
      print('Change: \$${change.toStringAsFixed(2)}');
      return true;
    } else {
      print('Not enough cash.');
    }
    return false;
  }
}

Product? chooseProduct() {
  final producslist = allProduct
      .map((e) => e.id.toString() + e.displayName)
      .join('\n'); //display list of available products in const allproducts and join by\n
  stdout.write('Available Products: \n$producslist\n Your choice: ');
  final line = stdin.readLineSync(); //taking input for the index of the item which the costumer has chosen
  for (var product in allProduct) {
    if (product.id.toString() == line) {
      //if index is matched then return the product else null.
      return product;
    }
  }
  print('not found');
  return null;
}
