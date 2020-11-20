import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'First task'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);


  void addTaskData(String sname){
    _tasks.add(Task(name: sname));
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }
  void toggle(Task task){
             task.toggleDone();
             notifyListeners();
  }
void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
}


}