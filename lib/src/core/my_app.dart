import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //TODO why do we have title property here? when do we use it? should we send the context with HopePage to use it?
      title: 'Hive',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
