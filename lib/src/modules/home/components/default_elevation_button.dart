import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/providers/todo_create_provider.dart';

class DefaultElevationButton extends StatelessWidget {
  const DefaultElevationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}