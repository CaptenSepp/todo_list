import 'package:flutter/material.dart';

class TodoComponent extends StatelessWidget {
  final String title;
  final int index;
  final void Function()? onTap;
  final void Function(int index)? onDelete;

  const TodoComponent({
    Key? key,
    required this.title,
    required this.index,
    this.onTap,
    this.onDelete,
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
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () => onDelete?.call(index),
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
