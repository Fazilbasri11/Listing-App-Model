import 'dart:math';

import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String spesialis;
  final String alamat;

  // ignore: use_key_in_widget_constructors
  const ProductItem(
      this.id, this.title, this.spesialis, this.alamat, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
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
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                    maxLines: 1,
                  ),
                  Text(
                    spesialis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    alamat,
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
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                            size: 20,
                          ),
                          color: Theme.of(context).colorScheme.secondary,
                          onPressed: () {},
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
