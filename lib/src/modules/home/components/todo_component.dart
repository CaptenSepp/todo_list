import 'package:flutter/material.dart';
import 'package:todo_list/src/core/db/db.dart';
import 'package:todo_list/src/modules/home/models/todo_model.dart';

class TodoComponent extends StatelessWidget {
  final TodoModel todoModel;
  final void Function()? onTap;
  final void Function(UniqueKey index) onDelete;

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
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 66,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Row(
          children: [
            Text(
              TodoDB.getInstance().todoGet().title,
            ),
            IconButton(
              onPressed: () => onDelete(todoModel.id),
              icon: Icon(
                Icons.delete_forever_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
