import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/src/core/my_app.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  //TODO remember what that does
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  // await Hive.initFlutter();
  Hive.registerAdapter(TodoModelAdapter());
  final todosBox = await Hive.openBox('todos');
  runApp(MyApp());
}
