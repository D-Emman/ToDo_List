import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';


class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Welcome to TODOs',isDone:false),
    Task(name: 'Click the add icon to add tasks',isDone: false),
    Task(name: 'Hold a task to delete it',isDone: false),
  ];
  //should have used unmodifiablelistview
  UnmodifiableListView<Task>? get tasks{

    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle) async{
    final prefs = await SharedPreferences.getInstance();
    final task = Task(name: newTaskTitle,isDone: false);
    _tasks.add(task);
    final taskList = prefs.getStringList('_tasks') ?? [];
    await prefs.setStringList('task', taskList);


    //main code
    // final task = Task(name: newTaskTitle,isDone: false);
    // _tasks.add(task);

   // taskList.add(task.name);

    notifyListeners();
  }

  void updateTask(Task task){
     task.toggleDone();
     notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


  //save tasks locally
  // _saveTask() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final task = Task(isDone: false,);
  //   final taskJson = task.toJson(); // Convert the task to a JSON map
  //   await prefs.setString('task', taskJson);
  // }

}