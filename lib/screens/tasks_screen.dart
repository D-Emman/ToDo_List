import 'package:flutter/material.dart';

import 'package:todo_list/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class TasksScreen extends StatelessWidget {


  Widget buildBottomSheet(BuildContext context){
    return Container(
      child:Center(
        child: Text('bottom sheet'),
      ) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
           showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(Icons.list, size: 30.0,color: Colors.lightBlueAccent, ),
                    backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0,),

                Text(
                  'TodoList',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),

              ],

            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0) )
                ),
               child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}


