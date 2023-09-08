import 'package:flutter/material.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:provider/provider.dart';



class TasksList extends StatelessWidget {


  // const TasksList({
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData, child){
      return ListView.builder(itemBuilder: (context, index) {
        final task = taskData.tasks![index];
        return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (bool ? checkboxState) {
              taskData.updateTask(task);

            },
          longPressCallback: (){
              taskData.deleteTask(task);
          },
        );
      },itemCount:taskData.taskCount ,);
      },

    );

    // return ListView(
    //   children: [
    //     TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone,),
    //     TaskTile(taskTitle: tasks[1].name,isChecked: tasks[1].isDone,),
    //   ],
    // );
  }
}
