import 'package:flutter/material.dart';
import 'package:magnit_shop_test/src/models/product.dart';

class ProductCardPage extends StatelessWidget {
  final Product product;
  const ProductCardPage(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
          child: (product.id == -1)
              ? const Text("Что то пошло не так")
              : Text("Карточка товара ${product.name}")),
    );
  }
}
