import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/bloc/filter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_query_model.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({
    Key? key,
  }) : super(key: key);

  final TextEditingController productController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            const Text("Фильтры"),
            TextFormField(
              controller: productController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Название',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: detailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Параметр',
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      context.read<FilterBloc>().add(const LoadShops());
                      productController.clear();
                      detailController.clear();
                    },
                    child: const Text("Отмена")),
                TextButton(
                    onPressed: () {
                      context.read<FilterBloc>().add(LoadByFilter(FilterQuery(
                          productController.text, detailController.text)));
                    },
                    child: const Text("Принять")),
              ],
            )
          ],
        ),
      );
    });
  }
}
