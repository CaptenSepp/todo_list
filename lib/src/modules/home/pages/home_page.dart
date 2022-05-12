import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/core/db/db.dart';
import 'package:todo_list/src/modules/home/components/todo_component.dart';
import 'package:todo_list/src/modules/home/components/todo_create.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';
import 'package:todo_list/src/modules/home/providers/home_provider.dart';
import 'package:hive/hive.dart';

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
      body: Column(
        children: [
          ListView.builder(
            itemCount: TodoDB.getInstance().todoGet().length,
            itemBuilder: (BuildContext context, int index) => TodoComponent(
              key: TodoDB.getInstance().todoGet()[index].id,
              todoModel: TodoDB.getInstance().todoGet()[index],
              onTap: () {},
              onDelete: context.read<HomeProvider>().onDelete,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TodoCreate(),
                ),
              ),
              label: const Text(
                'Add new Todo',
              ),
            ),
          )
        ],
      ),
    );
  }
}
