import 'package:magnit_shop_test/src/models/product.dart';
import 'package:magnit_shop_test/src/models/shop.dart';

class FilterResult {
  final Shop shop;
  Product? product;

  FilterResult(this.shop, {this.product});
}
