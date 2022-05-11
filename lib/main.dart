import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/src/core/my_app.dart';

void main() async {
  //TODO remember what that does
  WidgetsFlutterBinding.ensureInitialized();
  // final appDocumentDirectory =
  //     await path_provider.getApplicationDocumentsDirectory();
  // Hive.init(appDocumentDirectory.path);
  await Hive.initFlutter();
  // final todosBox = await Hive.openBox('todos');
  runApp(MyApp());
}
