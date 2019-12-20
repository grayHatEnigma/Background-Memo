import 'package:flutter/material.dart';
import 'package:background_memo/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkBoxCallBack;
  TaskTile({this.task, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          letterSpacing: 1,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: (newState) {
          checkBoxCallBack(newState);
        },
      ),
    );
  }
}
