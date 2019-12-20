import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskText;
  TaskTile({this.taskText});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          letterSpacing: 1,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckBox: (newState) {
            setState(() {
              isChecked = newState;
            });
          }),
    );
  }
}
//////////////////////////////////////////////////

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBox;

  TaskCheckBox({this.checkBoxState, this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: (newValue) {
        toggleCheckBox(newValue);
      },
    );
  }
}
