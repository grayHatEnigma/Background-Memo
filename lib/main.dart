import 'package:background_memo/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:background_memo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Background Memo',
        home: TasksScreen(),
      ),
    );
  }
}
