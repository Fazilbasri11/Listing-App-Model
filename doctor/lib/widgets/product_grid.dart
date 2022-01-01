import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final allproduct = productData.allproducts;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      itemCount: allproduct.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: allproduct[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
    );
  }
}
