
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  TextEditingController textEditingController=TextEditingController();
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(

        decoration: BoxDecoration(
          color: CupertinoColors.white,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight:Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle
                (fontWeight: FontWeight.w600,
                  fontSize: 50.0,
                  color: Colors.lightBlueAccent),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                textAlign: TextAlign.center,
              autofocus: true,
                onChanged: (value)=>text=value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                child:
              Text('Add',style:
              TextStyle(
                  color: Colors.white,
                fontSize: 20.0

              )
              ),
                onPressed: (){
                  Provider.of<TaskData>(context,listen: false).addTaskData(text);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent
                ),
            )
          ],
        ),

      )


    );
  }
}
