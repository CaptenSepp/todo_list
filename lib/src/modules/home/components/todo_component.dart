import 'package:flutter/material.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoComponent extends StatelessWidget {
  final TodoModel todoModel;
  final void Function()? onTap;
  final void Function(String) onDelete;

  const TodoComponent({
    Key? key,
    required this.todoModel,
    this.onTap,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 66,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todoModel.title,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () => onDelete(todoModel.id),
                icon: const Icon(
                  Icons.delete_forever_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
