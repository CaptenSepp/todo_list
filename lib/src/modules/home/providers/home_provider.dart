import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class HomeProvider extends ChangeNotifier {
  List<TodoModel> todos = [];
  TextEditingController controller = TextEditingController();

  void onSave() {
    String title = controller.text;
    todos.add(
      TodoModel(
        title: title,
      ),
    );
    controller.clear();
    notifyListeners();
  }

  void onDelete(UniqueKey id) {
    todos.removeWhere((todoModel) => todoModel.id == id);
    notifyListeners();
  }
}
