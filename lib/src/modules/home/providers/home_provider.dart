import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

import '../../../data/todoDB/todo_db.dart';

class HomeProvider extends ChangeNotifier {
  final todoDB = TodoDB.instance;
  List<TodoModel>? todoList;

  HomeProvider() {
    initialize();
  }

  void initialize() {
    todoList = todoDB.getAllTodos();
    for (var item in todoDB.getAllTodos()) {}
    notifyListeners();
  }

  void onDelete(String id) {
    todoDB.deleteTodo(id);
    initialize();
    notifyListeners();
  }
}
