import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:background_memo/models/tasks_data.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Add a Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your task',
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                if (newTaskTitle != null) {
                  print(newTaskTitle);
                  print(context.toString());
                  print(Provider.of<TasksData>(context).toString());
                  // Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
