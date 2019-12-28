import 'package:background_memo/models/task.dart';
import 'package:flutter/foundation.dart';

class TasksData with ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasksList => _tasks;
  int get size => _tasks.length;

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
