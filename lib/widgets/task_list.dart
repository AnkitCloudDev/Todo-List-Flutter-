import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/widgets/task_tile.dart';


class TaskList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Consumer<TaskData>(

        builder: (BuildContext context, taskData, Widget child) {
          return ListView.builder(itemBuilder: (context, index) {

            return TaskTile(
                title: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                callback: (val){
                  taskData.toggle(taskData.tasks[index]);
                },
              longpressCallback: (){
                  taskData.deleteTask(taskData.tasks[index]);
              }
            );
          }, itemCount: taskData.taskCount,

          );
        }
      );
    }
  }



