import 'package:doctor/widgets/obat_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';
import './product_item.dart';

class ObatRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  Container(
                    width: 170,
                    height: 180,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(218, 221, 252, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(255, 67, 123, 1.0),
                            Color.fromRGBO(255, 155, 185, 0.8),
                          ],
                        )),
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: Image(
                          image: AssetImage(
                        "icons/heart.png",
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Cardiology"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
