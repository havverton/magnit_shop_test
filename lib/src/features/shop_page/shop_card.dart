import 'package:flutter/material.dart';
import 'package:magnit_shop_test/src/models/shop.dart';

class ShopCardPage extends StatelessWidget {
  final Shop shop;
  const ShopCardPage(this.shop, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
      ),
      body: Center(child: Text("Карточка магазина ${shop.name}")),
    );
  }
}
