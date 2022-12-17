// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/cupertino.dart';
import 'package:myshop/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: "1",
        description: "A red tshirt,pretty red",
        title: "T-shirt",
        imageUrl:
            "https://shop.gayice.is/wp-content/uploads/2018/02/BOI-TSHIRT-03-BLACK-1000x800.gif",
        price: 250),
    Product(
        id: "2",
        description: "A red tshirt,pretty red",
        title: "Black Shirt",
        imageUrl:
            "https://shop.gayice.is/wp-content/uploads/2018/02/BOI-TSHIRT-03-BLACK-1000x800.gif",
        price: 300),
    Product(
        id: "3",
        description: "A red tshirt,pretty red",
        title: "Dummy Shirt",
        imageUrl:
            "https://shop.gayice.is/wp-content/uploads/2018/02/BOI-TSHIRT-03-BLACK-1000x800.gif",
        price: 350),
    Product(
        id: "4",
        description: "A red tshirt,pretty red",
        title: "Shirt",
        imageUrl:
            "https://shop.gayice.is/wp-content/uploads/2018/02/BOI-TSHIRT-03-BLACK-1000x800.gif",
        price: 400),
  ];
  List<Product> get items {
    return [..._items]; //return a copy
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
