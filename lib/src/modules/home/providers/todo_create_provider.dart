import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'package:todo_list/src/core/db/db.dart';

class TodoCreateProvider extends ChangeNotifier {
  //use the box we created before
  // final todosBox = Hive.openBox<TodoModel>('todos');
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

    todoDb.todoAdd(newTodo);

    titleController.clear();
    notifyListeners();
  }
}
