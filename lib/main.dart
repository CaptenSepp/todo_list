import 'package:flutter/material.dart';
import 'package:todo_list/src/core/my_app.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';

void main() async {
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  runApp(MyApp());
  final todosBox = await Hive.openBox('todos');
}
