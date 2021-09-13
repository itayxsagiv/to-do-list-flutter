import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  String title;
  Function(bool?)? checkBoxCallback;

  TaskTile({
    required this.isChecked,
    required this.title,
    required this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}
