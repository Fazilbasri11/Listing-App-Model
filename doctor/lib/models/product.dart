import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String alamat;
  final String spesialis;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.spesialis,
    required this.alamat,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
