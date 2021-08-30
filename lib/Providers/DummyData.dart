import 'package:flutter/material.dart';

class DummyData {
  final String id;
  final String title;
  final int price;
  final String color;
  final int quantity;

  DummyData(
      {@required this.id,
      @required this.title,
      @required this.price,
      @required this.color,
      @required this.quantity});
}

class ProductsList with ChangeNotifier {
  final List<DummyData> _myProducts = [
    DummyData(
        id: '1',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
    DummyData(
        id: '2',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
    DummyData(
        id: '3',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
    DummyData(
        id: '4',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
    DummyData(
        id: '5',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
    DummyData(
        id: '6',
        title: 'Apple iphone 12',
        price: 999,
        color: 'Red',
        quantity: 1),
  ];

  List<DummyData> get products {
    return [..._myProducts];
  }

  void addProduct() {
    //adding product
  }

  void deleteProduct(String id) {
    int index = _myProducts.indexWhere((element) => element.id == id);
    final removedProduct = _myProducts[index];
    _myProducts.removeAt(index);
    notifyListeners();
  }
}
