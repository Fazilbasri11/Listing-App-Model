import 'dart:math';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _allproducts = List.generate(
    20,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Dr. ${faker.person.name()}",
        spesialis: "Spesialist: ${faker.job.title()}",
        alamat: "Jl. ${faker.address.streetName()}",
        description: '  ${faker.lorem.sentences(10)}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allproducts {
    return [..._allproducts];
  }

  Product findById(productId) {
    return _allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
