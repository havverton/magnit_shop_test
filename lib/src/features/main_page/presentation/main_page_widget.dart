import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/bloc/filter_bloc.dart';
import 'package:magnit_shop_test/src/features/main_page/data/filter_service.dart';
import 'package:magnit_shop_test/src/features/main_page/presentation/filter_widget.dart';
import 'package:magnit_shop_test/src/features/main_page/presentation/shop_list_card.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop App'),
      ),
      body: BlocProvider(
        create: (context) => FilterBloc(
          RepositoryProvider.of<FilterService>(context),
        )..add(const FilterInitial()),
        child: Column(
          children: [
            FilterWidget(),
            Expanded(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  //При загрузке отображаем индикатор
                  if (state is LoadingFilterState) {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.red),
                    );
                  }
                  //при запуске загружаем магазины
                  if (state is InitialFilterState) {
                    context.read<FilterBloc>().add(const LoadShops());
                  }

                  var list = [];
                  if (state is LoadedByFilterState) {
                    list = state.shops;
                  }
                  if (state is LoadedDefaultState) {
                    list = state.shops;
                  }
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      if (list.isEmpty) {
                        return const Center(
                          child: Text("Здесь пока что пусто"),
                        );
                      }
                      return ListTile(
                        title: ShopCard(list[index]),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
