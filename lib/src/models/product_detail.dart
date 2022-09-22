import 'package:hive/hive.dart';

part 'product_detail.g.dart';

@HiveType(typeId: 1)
class ProductDetail extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String weight;

  ProductDetail(this.id, this.weight);
}
