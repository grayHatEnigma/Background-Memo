import 'package:flutter/material.dart';
import 'package:background_memo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          taskText: 'This is a task.',
        ),
        TaskTile(
          taskText: 'This is a task.',
        ),
        TaskTile(
          taskText: 'This is a task.',
        ),
      ],
    );
  }
}
