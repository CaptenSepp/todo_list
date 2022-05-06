import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          height: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white10,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todoModel.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () => onDelete(todoModel.id),
                icon: Icon(
                  Icons.delete_forever_rounded,
                  color: Theme.of(context).errorColor,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
