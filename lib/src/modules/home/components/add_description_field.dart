import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/providers/todo_create_provider.dart';

class AddDescriptionField extends StatelessWidget {
  const AddDescriptionField({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final TodoCreateProvider provider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 249, 230, 230),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 300.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              //! both lines below do the same work
              // controller: provider.descriptionController,
              controller: context.read<TodoCreateProvider>().descriptionController,
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
    );
  }
}
