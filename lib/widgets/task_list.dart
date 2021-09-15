import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<Tasks>(context).tasks;
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        isChecked: tasks[index].isChecked,
        title: tasks[index].title,
        onChanged: (bool? newValue) {
          tasks[index].toggleDone();
          setState(() {});
        },
      ),
      itemCount: tasks.length,
    );
  }
}
