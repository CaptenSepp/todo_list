import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/src/modules/home/providers/todo_create_provider.dart';

class SaveElevationButton extends StatelessWidget {
  const SaveElevationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        //TODO after the onPressed, the debuger goes upward to alignmane and Align and then goes to the method onSave
        onPressed: () => context.read<TodoCreateProvider>().onSave(context),
        // onPressed: context.read<TodoCreateProvider>().onSave,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'SAVE',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
