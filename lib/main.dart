import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/src/core/my_app.dart';
import 'package:todo_list/src/data/todoDB/todo_db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(TodoModelAdapter());
  await TodoDB.instance.initialize();
  runApp(const MyApp());
}
