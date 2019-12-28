import 'dart:collection';
import 'package:background_memo/models/task.dart';
import 'package:flutter/foundation.dart';

class TasksData with ChangeNotifier {
  List<Task> _tasks = [];
  UnmodifiableListView<Task> get tasksList =>
      UnmodifiableListView<Task>(_tasks);
  int get size => _tasks.length;

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
