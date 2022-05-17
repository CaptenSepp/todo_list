import 'package:hive/hive.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoDB {
  static final TodoDB instance = TodoDB._();
  final String todoBoxName = 'todoBox';

  TodoDB._();

  late final Box<TodoModel> _todoBox;

  TodoModel? getTodo(String id) {
    return _todoBox.get(id, defaultValue: _todoBox.getAt(0));
  }

  Future<void> initialize() async {
    _todoBox = await Hive.openBox<TodoModel>(todoBoxName);
  }

  void addTodo(TodoModel newTodo) {
    _todoBox.put(newTodo.id, newTodo);
    goBack();
  }

  void deleteTodo(String id) {
    _todoBox.delete(id);
    // _todoBox.get(id)!.delete();
  }

  List<TodoModel> getAllTodos() {
    List<TodoModel> todoList = [];
    todoList.addAll(_todoBox.values);
    return todoList;
  }

  void goBack() {}
}
