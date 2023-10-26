import 'package:apiii/view_model/data/network/dio_helper.dart';
import 'package:flutter/material.dart';

import 'view/screens/api_demo.dart';

Future<void> main() async {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ApiDemo(),
    );
  }
}
