import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class HomeProvider extends ChangeNotifier {
  //TODO changed todos from initiated to late and initiated, without initiating it doesn't run
  late List<TodoModel> todos = [];


  void onDelete(UniqueKey id) {
    todos.removeWhere((todoModel) => todoModel.id == id);
    notifyListeners();
  }
}
