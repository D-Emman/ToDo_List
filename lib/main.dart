import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
       return  TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
