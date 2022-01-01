import 'dart:math';

import 'package:doctor/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: productData.id,
            );
          },
          child: Image.network(
            productData.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: Container(
          padding: const EdgeInsets.only(top: 10),
          color: Colors.white,
          height: 130,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productData.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                    maxLines: 1,
                  ),
                  Text(
                    productData.spesialis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    productData.alamat,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black87),
                    maxLines: 1,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: (productData.isFavorite)
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                  size: 20,
                                ),
                          color: Theme.of(context).colorScheme.secondary,
                          onPressed: () {
                            productData.statusFav();
                          },
                        ),
                        Text(
                          "${10 + Random().nextInt(100).toDouble()} | Pasien (${10 + Random().nextInt(100)})",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
