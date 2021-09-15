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
          itemBuilder: (context, index) => TaskTile(
            isChecked: tasksData.tasks[index].isChecked,
            title: tasksData.tasks[index].title,
            onChanged: (bool? newValue) {
              tasksData.tasks[index].toggleDone();
              tasksData.updateUI();
            },
          ),
          itemCount: tasksData.tasks.length,
        );
      },
    );
  }
}
