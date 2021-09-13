import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?)? toggleCheckBoxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
