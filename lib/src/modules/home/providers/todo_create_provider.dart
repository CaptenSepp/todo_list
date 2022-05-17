import 'package:flutter/material.dart';
import 'package:todo_list/src/core/todoDB/todo_db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'package:todo_list/src/modules/home/pages/home_page.dart';

class TodoCreateProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  void Function(BuildContext context)? push;
  final todoDB = TodoDB.instance;

  void onSave(BuildContext context) {
    String title = titleController.text;
    String? description = descriptionController.text;
    DateTime createdDate = DateTime.now();
    //make new TodoModel
    TodoModel newTodo = TodoModel(
      title: title,
      description: description,
      createdDate: createdDate,
      id: UniqueKey().toString(),
    );
    todoDB.addTodo(newTodo);

    //TODO added push to home page here
    void push(context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );
    }

    titleController.clear();
    descriptionController.clear();
    notifyListeners();
    push(context);
  }
}
