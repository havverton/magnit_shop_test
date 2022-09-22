import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:magnit_shop_test/src/features/main_page/data/filter_service.dart';
import 'package:magnit_shop_test/src/features/main_page/presentation/main_page_widget.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => FilterService()),
      ],
      child: MaterialApp(
        title: 'Magnit Shop',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MainPageWidget(),
      ),
    );
  }
}
