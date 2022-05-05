import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/components/todo_component.dart';
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: provider.todos.length,
              itemBuilder: (BuildContext context, int index) => TodoComponent(
                title: provider.todos[index].title,
                onTap: () {},
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: provider.controller,
                      decoration: InputDecoration(
                        label: const Text('title'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: context.read<HomeProvider>().onSave,
                  child: const Text('Save'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
