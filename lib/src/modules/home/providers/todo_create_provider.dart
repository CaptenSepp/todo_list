import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoCreateProvider extends ChangeNotifier {
  List<TodoModel> todos = [];
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  void onSave() {
    String title = controller.text;
    String? description = controller2.text;
    DateTime createdDate = DateTime.now();
    todos.add(
      TodoModel(
        title: title,
        description: description,
        createdDate: createdDate,
      ),
    );
    controller.clear();
    notifyListeners();
  }
}
