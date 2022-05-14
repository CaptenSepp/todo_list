import 'package:flutter/material.dart';
import 'package:todo_list/src/core/db/todo_db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoCreateProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final todoDB = TodoDB.instance;

  void onSave() {
    String title = titleController.text;
    String? description = descriptionController.text;
    DateTime createdDate = DateTime.now();
    //make new TodoModel
    TodoModel newTodo = TodoModel(
      title: title,
      description: description,
      createdDate: createdDate, id: UniqueKey().toString(),
    );
    todoDB.addTodo(newTodo);

    titleController.clear();
    descriptionController.clear();
    notifyListeners();
  }
}
