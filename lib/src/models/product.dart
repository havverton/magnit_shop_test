import 'package:hive/hive.dart';

import 'product_detail.dart';

part 'product.g.dart';

@HiveType(typeId: 2)
class Product extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  late final HiveList<ProductDetail> details;

  Product(this.id, this.name);
}
