import 'package:hive/hive.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_query_model.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_result_model.dart';
import 'package:magnit_shop_test/src/models/product.dart';
import 'package:magnit_shop_test/src/models/product_detail.dart';
import 'package:magnit_shop_test/src/models/shop.dart';

class FilterService {
  late final Box<Shop> _shops;
  late final Box<Product> _products;
  late final Box<ProductDetail> _details;

  Future<void> init() async {
    Hive.registerAdapter(ShopAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductDetailAdapter());

    _shops = await Hive.openBox<Shop>('shops');
    _products = await Hive.openBox<Product>('products');
    _details = await Hive.openBox<ProductDetail>('product_details');

    if (_shops.isEmpty) {
      await _fillShops();
    }
  }

  List<FilterResult> getAllShops() {
    var result = <FilterResult>[];
    for (var shop in _shops.values) {
      result.add(FilterResult(shop));
    }
    return result;
  }

  List<FilterResult> getShops(final FilterQuery query) {
    final results = <FilterResult>[];
    if (query.productQuery.isEmpty && query.detailsQuery.isEmpty) {
      return getAllShops();
    }
    if (query.productQuery.isNotEmpty) {
      //проверяем магазины
      for (var shop in _shops.values) {
        //проверяем товары в магазинах
        for (var product in shop.products) {
          //проверяем на совпадение по имени товара
          bool productExist =
              product.name.toLowerCase() == query.productQuery.toLowerCase();
          if (productExist) {
            //если в фильтре только имя товара - записывем результат
            if ((query.detailsQuery.isEmpty)) {
              results.add(FilterResult(shop, product: product));
              break;
            } else {
              //в противном случае проверяем на параметры
              var detailsExist = product.details
                  .where((detail) => detail.weight == query.detailsQuery);
              //если параметр из запроса совпадает с нашим товаром - записываем
              if (detailsExist.isNotEmpty) {
                results.add(FilterResult(shop, product: product));
                break;
              }
            }
          }
        }
      }
      return results;
    } else {
      for (var shop in _shops.values) {
        for (var product in shop.products) {
          var detailExist = product.details
              .where((detail) => detail.weight == query.detailsQuery);
          if (detailExist.isNotEmpty) {
            results.add(FilterResult(shop, product: product));
            break;
          }
        }
      }
      return results;
    }
  }

  _fillShops() async {
    final lenta = Shop(0, "Ленточка");
    final magnit = Shop(1, "Магнит");
    final bukvar = Shop(2, "Букварь вкуса");

    final product1 = Product(0, "prod1");
    final product2 = Product(1, "prod2");
    final product3 = Product(2, "prod3");
    final product4 = Product(3, "prod1");
    final product5 = Product(4, "prod1");
    final product6 = Product(5, "prod6");

    final detail11 = ProductDetail("weight", "100");
    final detail12 = ProductDetail("quantity", "100");
    final detail21 = ProductDetail("weight", "100");
    final detail22 = ProductDetail("quantity", "150");
    final detail31 = ProductDetail("weight", "1");
    final detail32 = ProductDetail("quantity", "2");

    final detail41 = ProductDetail("weight", "100");
    final detail42 = ProductDetail("quantity", "100");
    final detail51 = ProductDetail("weight", "11");
    final detail52 = ProductDetail("quantity", "150");
    final detail61 = ProductDetail("weight", "1");
    final detail62 = ProductDetail("quantity", "2");

    _details.addAll([
      detail11,
      detail12,
      detail21,
      detail22,
      detail31,
      detail32,
      detail41,
      detail42,
      detail51,
      detail52,
      detail61,
      detail62
    ]);

    product1.details = HiveList(_details);
    product2.details = HiveList(_details);
    product3.details = HiveList(_details);
    product4.details = HiveList(_details);
    product5.details = HiveList(_details);
    product6.details = HiveList(_details);

    product1.details.addAll([detail11, detail12]);
    product2.details.addAll([detail21, detail22]);
    product3.details.addAll([detail31, detail32]);
    product4.details.addAll([detail41, detail42]);
    product5.details.addAll([detail51, detail52]);
    product6.details.addAll([detail61, detail62]);

    _products
        .addAll([product1, product2, product3, product4, product5, product6]);
    product1.save();
    product2.save();
    product3.save();
    product4.save();
    product5.save();
    product6.save();

    lenta.products = HiveList(_products);
    lenta.products.addAll([product1, product4]);
    _shops.add(lenta);

    magnit.products = HiveList(_products);
    magnit.products.addAll([product2, product5]);
    _shops.add(magnit);

    bukvar.products = HiveList(_products);
    bukvar.products.addAll([product3, product6]);
    _shops.add(bukvar);
  }
}
