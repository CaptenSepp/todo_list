import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/components/add_description_field.dart';
import 'package:todo_list/src/modules/home/components/default_elevation_button.dart';
import 'package:todo_list/src/modules/home/providers/todo_create_provider.dart';

class TodoCreate extends StatelessWidget {
  const TodoCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TodoCreateProvider(),
      child: const _TodoCreatePage(),
    );
  }
}

class _TodoCreatePage extends StatelessWidget {
  const _TodoCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoCreateProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: DefaultElevationButton(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: provider.titleController,
                      decoration: const InputDecoration(
                        hintText: "Todo",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                      maxLines: null,
                    ),
                  ),
                  AddDescriptionField(provider: provider),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
