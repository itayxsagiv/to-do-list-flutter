import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  String title;
  Function(bool?)? onChanged;
  Function()? onLongPressed;

  TaskTile({
    required this.isChecked,
    required this.title,
    required this.onChanged,
    required this.onLongPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
