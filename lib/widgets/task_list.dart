import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(
      title: 'Task',
    ),
    Task(
      title: 'Task',
    ),
    Task(
      title: 'Task',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
          isChecked: tasks[index].isChecked,
          title: tasks[index].title,
          checkBoxCallback: (newValue) {
            setState(() {
              tasks[index].toggleDone();
            });
          }),
      itemCount: tasks.length,
    );
  }
}
