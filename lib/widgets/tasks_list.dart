import 'package:flutter/material.dart';
import 'package:background_memo/widgets/task_tile.dart';
import 'package:background_memo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:background_memo/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(builder: (context, tasksData, child) {
      final List<Task> tasksList = tasksData.tasksList;
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = tasksList[index];
          return TaskTile(
            title: task.name,
            isChecked: task.isDone,
            onCheckedCallback: (newValue) {
              tasksData.toggleDone(task);
            },
          );
        },
        itemCount: tasksList.length,
      );
    });
  }
}
