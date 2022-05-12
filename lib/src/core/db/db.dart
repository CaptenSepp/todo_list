import 'package:hive/hive.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoDB {
  static TodoDB? _instance;

  var hiveTodos = Hive.box<TodoModel>('todos');

  TodoDB._();

  static getInstance() {
    _instance ??= TodoDB._();
    return _instance;
  }

  //TODO add two method add and get for hiveBox
  void todoAdd(TodoModel newTodo) {
    hiveTodos.add(newTodo);
  }

  List todoGet() {
    List todoList = [];
    for (var i = 0; i < hiveTodos.length; i++) {
      todoList.add(hiveTodos.getAt(i));
    }
    //list of all TodoModels
    return todoList;
  }
}
