import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/components/todo_component.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = [
      TodoModel(id: 'id', title: 'title1', text: 'text1', isDone: false),
      TodoModel(id: 'id', title: 'title2', text: 'text2', isDone: false),
      TodoModel(id: 'id', title: 'title3', text: 'text3', isDone: false),
      TodoModel(id: 'id', title: 'title4', text: 'text4', isDone: false),
      TodoModel(id: 'id', title: 'title5', text: 'text5', isDone: false),
      TodoModel(id: 'id', title: 'title6', text: 'text6', isDone: false),
      TodoModel(id: 'id', title: 'title7', text: 'text7', isDone: false),
      TodoModel(id: 'id', title: 'title8', text: 'text8', isDone: false),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) => TodoComponent(
                title: todos[index].title,
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
                  onPressed: () {},
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
