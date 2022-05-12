import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: 300.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: provider.descriptionController,
                            cursorWidth: 0,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "add description here...",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 22,
                            ),
                            maxLines: null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'SAVE',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    onPressed: context.read<TodoCreateProvider>().onSave,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
