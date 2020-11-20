import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final String  title;
  final Function callback;

  final isChecked;

  final Function longpressCallback;
  TaskTile({this.isChecked, this.title, this.callback, this.longpressCallback});

  @override
  Widget build(BuildContext context) {

    return ListTile(

      onLongPress: (){

        longpressCallback();
      },
        title: Text(title,
            style:TextStyle(
                decoration: isChecked?TextDecoration.lineThrough:null

            )),
        leading: Checkbox(
          value: isChecked,
          onChanged: callback,
        )
    );
  }

}




