import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/components/todo_component.dart';

class HomeProvider extends ChangeNotifier {
  List<TodoComponent> todos = [];
  TextEditingController controller = TextEditingController();

  void onSave() {
    String title = controller.text;
    todos.add(
      TodoComponent(
        title: title,
        index: todos.length,
      ),
    );
    controller.clear();
    notifyListeners();
  }

  void onDelete(int index) {
    todos.removeAt(index);
    notifyListeners();
  }
}
