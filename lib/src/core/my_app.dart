import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/pages/home_page.dart';
import 'package:vrouter/vrouter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false,
      title: 'Hive',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: [
        VWidget(
          path: '/',
          widget: const HomePage(),
        ),
      ],
    );
  }
}
