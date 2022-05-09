import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/providers/home_provider.dart';

class UserInput extends StatelessWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: provider.controller,
                        decoration: InputDecoration(
                          label: const Text('title',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40)),
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
                  //TODO ElevatedButton(
                  //   onPressed: context.read<HomeProvider>().onSave,
                  //   child: const Text('Save'),
                  // ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple),
                  // color: Colors.red,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 300.0,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,hintText: "you can add your note here..."
                        ),
                        style: TextStyle(
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
      ),
    );
  }
}
