import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/components/todo_component.dart';
import 'package:todo_list/src/modules/home/pages/todo_create_page.dart';
import 'package:todo_list/src/modules/home/providers/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(
          milliseconds: 450,
        ),
        child: (provider.todoList == null)
            ? const CircularProgressIndicator()
            : ListView.separated(
                itemCount: provider.todoList!.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    height: 1,
                    color: Colors.black45,
                  );
                },
                itemBuilder: (context, index) => TodoComponent(
                  todoModel: provider.todoList![index],
                  onDelete: provider.onDelete,
                  onTap: () {},
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const TodoCreate(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
