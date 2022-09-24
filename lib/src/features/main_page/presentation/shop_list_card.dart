import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/bloc/filter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_result_model.dart';
import 'package:magnit_shop_test/src/features/product_page/product_card.dart';
import 'package:magnit_shop_test/src/features/shop_page/shop_card.dart';
import 'package:magnit_shop_test/src/models/product.dart';

class ShopCard extends StatelessWidget {
  final FilterResult result;

  const ShopCard(
    this.result, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          final state = context.read<FilterBloc>().state;
          if (state is LoadedState) {
            if (state.filter) {
              var product = result.product ?? Product(-1, "Error");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductCardPage(product),
                ),
              );
            } else {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopCardPage(result.shop),
                ),
              );
            }
          }
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(child: Text(result.shop.name)),
        ),
      ),
    );
  }
}
