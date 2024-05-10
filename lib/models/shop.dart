import 'package:e_mall/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    Product(
        name: "Blue Crystal",
        description:
            "96% Pure,alse the best quality that U can buy from anywhere",
        imagePath: "assets/blue crystal.json",
        price: 2500.00),
    Product(
        name: "Weed",
        description: "Key to your own paradise",
        imagePath: "assets/weed.json",
        price: 98.88),
    Product(
        name: "Cocaine",
        description: "One hit is enough to make your throat numb",
        imagePath: "assets/cocaine.json",
        price: 299.99),
    Product(
        name: "Lawyer Service",
        description: "Better call Saul ! ",
        imagePath: "assets/lawyer.json",
        price: 8000.00),
  ];

  List<Product> _cart = [];

  List<Product> get cart => _cart;
  List<Product> get shop => _shop;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
