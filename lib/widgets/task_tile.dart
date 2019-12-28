import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function onCheckedCallback;
  final Function onLongPressedCallback;
  TaskTile(
      {this.title,
      this.isChecked,
      this.onCheckedCallback,
      this.onLongPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressedCallback,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          letterSpacing: 1,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onCheckedCallback,
      ),
    );
  }
}
