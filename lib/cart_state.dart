import 'package:flutter_application_dojo/product.model.dart';
import 'package:flutter/material.dart';

class CartState with ChangeNotifier {
  List<Product> items = [];

  addProduct(Product product) {
    if (items.contains(product)) {
      return;
    }
    items.add(product);
    notifyListeners();
  }

  removeProduct(Product product) {
    items.remove(product);
    notifyListeners();
  }
}
