import 'package:flutter_application_dojo/main.dart';
import 'package:flutter_application_dojo/product_card.dart';
import 'package:flutter_application_dojo/shopping_bag.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Catalog',
          style: TextStyle(color: Colors.black54),
        ),
        actions: [ShoppingBag()],
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3 / 4),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
        ),
      ),
    );
  }
}
