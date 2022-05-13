import 'package:flutter/material.dart';
import 'package:todo_list/src/core/db/todo_db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class HomeProvider extends ChangeNotifier {
  final todoDB = TodoDB.instance;
  List<TodoModel>? todoList;

  HomeProvider() {
    initialize();
  }

  void initialize() {
    todoList = todoDB.getAllTodos();
    notifyListeners();
  }

  void onDelete(String id) {
    todoDB.deleteTodo(id);
    notifyListeners();
  }
}
