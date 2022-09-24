import 'package:hive/hive.dart';
import 'product.dart';

part 'shop.g.dart';

@HiveType(typeId: 3)
class Shop extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  late final HiveList<Product> products;

  Shop(this.id, this.name);
}
