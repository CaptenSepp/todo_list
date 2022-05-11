import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoCreateProvider extends ChangeNotifier {
  final todosBox = Hive.box<TodoModel>('todos');
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  void onSave() {
    String title = titleController.text;
    String? description = descController.text;
    DateTime createdDate = DateTime.now();

    TodoModel newTodo = TodoModel(
      title: title,
      description: description,
      createdDate: createdDate,
    );

    todosBox.add(newTodo);
    titleController.clear();
    notifyListeners();
  }
}
