import 'package:flutter/material.dart';
import 'package:todo_list/src/core/db/db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'package:hive/hive.dart';

class TodoCreateProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TodoDB todoDb = TodoDB.getInstance();

  void onSave() {
    String title = titleController.text;
    String? description = descController.text;
    DateTime createdDate = DateTime.now();
    //make new TodoModel
    TodoModel newTodo = TodoModel(
      title: title,
      description: description,
      createdDate: createdDate,
    );
    newTodo.save();
    print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');
    print(newTodo.toString());
    // todoDb.todoAdd(newTodo);

    titleController.clear();
    notifyListeners();
  }
}
