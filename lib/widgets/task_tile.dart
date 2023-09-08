import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
   var taskTitle;
 var isChecked = false;
 var checkboxCallback;
 var longPressCallback;

 TaskTile({required this.isChecked, this.taskTitle,this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback ,
      title : Text(taskTitle,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none ),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
      ),
    );
  }
}



//
// class TaskCheckbox extends StatelessWidget {
// var toggleCheckboxState;
// var checkboxState;

//  TaskCheckbox({this.checkboxState,this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
