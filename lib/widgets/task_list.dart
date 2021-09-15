import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (BuildContext context, tasksData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.tasks[index];
            return TaskTile(
              isChecked: task.isChecked,
              title: task.title,
              onChanged: (bool? newValue) {
                tasksData.updateTask(task);
              },
            );
          },
          itemCount: tasksData.tasks.length,
        );
      },
    );
  }
}
