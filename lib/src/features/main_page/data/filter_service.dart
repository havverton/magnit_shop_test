import 'package:hive/hive.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_query_model.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_result_model.dart';
import 'package:magnit_shop_test/src/models/product.dart';
import 'package:magnit_shop_test/src/models/product_detail.dart';
import 'package:magnit_shop_test/src/models/shop.dart';

class FilterService {
  late Box<Shop> _shops;
  late Box<Product> _products;
  late Box<ProductDetail> _details;

  Future<void> init() async {
    Hive.registerAdapter(ShopAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductDetailAdapter());

    _shops = await Hive.openBox<Shop>('shops_tst1');
    _products = await Hive.openBox<Product>('products_tst1');
    _details = await Hive.openBox<ProductDetail>('products_details_tst1');

    // _shops.clear();
    // _products.clear();
    // _details.clear();

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
            } else {
              //в противном случае проверяем на параметры
              var detailsExist = product.details
                  .where((detail) => detail.weight == query.detailsQuery);
              //если параметр из запроса совпадает с нашим товаром - записываем
              if (detailsExist.isNotEmpty) {
                results.add(FilterResult(shop, product: product));
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
          }
        }
      }
      return results;
    }
  }

  _fillShops() async {
    var lenta = Shop(0, "Ленточка");
    var magnit = Shop(1, "Магнит");
    var bukvar = Shop(2, "Букварь вкуса");

    var product1 = Product(0, "prod1");
    var product2 = Product(1, "prod2");
    var product3 = Product(2, "prod3");

    var detail11 = ProductDetail("weight", "100");
    var detail12 = ProductDetail("quantity", "100");
    var detail21 = ProductDetail("weight", "11");
    var detail22 = ProductDetail("quantity", "150");
    var detail31 = ProductDetail("weight", "1");
    var detail32 = ProductDetail("quantity", "2");

    _details
        .addAll([detail11, detail12, detail21, detail22, detail31, detail32]);

    product1.details = HiveList(_details);
    product2.details = HiveList(_details);
    product3.details = HiveList(_details);

    product1.details.addAll([detail11, detail12]);
    product2.details.addAll([detail21, detail22]);
    product3.details.addAll([detail31, detail32]);

    _products.addAll([product1, product2, product3]);
    product1.save();
    product2.save();
    product3.save();

    lenta.products = HiveList(_products);
    lenta.products.add(product1);
    _shops.add(lenta);

    magnit.products = HiveList(_products);
    magnit.products.add(product2);
    _shops.add(magnit);

    bukvar.products = HiveList(_products);
    bukvar.products.add(product3);
    _shops.add(bukvar);
  }
}
