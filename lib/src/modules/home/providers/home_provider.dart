import 'package:flutter/material.dart';
import 'package:todo_list/src/core/db/db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'todo_create_provider.dart';

class HomeProvider extends ChangeNotifier {
  //TODO changed todos from initiated to late and initiated, without initiating it doesn't run


  void onDelete(UniqueKey id) {
    TodoDB.getInstance().todoGet().removeWhere((todoModel) => todoModel.id == id);
    notifyListeners();
  }
}
