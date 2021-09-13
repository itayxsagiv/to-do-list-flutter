import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList2 extends StatelessWidget {
  final List<Task> tasks;
  final Function(bool?)? onChanged;

  const TaskList2({required this.tasks, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        isChecked: tasks[index].isChecked,
        title: tasks[index].title,
        onChanged: (bool? newValue) {
          tasks[index].toggleDone();
          onChanged!(newValue);
        },
      ),
      itemCount: tasks.length,
    );
  }
}