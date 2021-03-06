
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/screens/add_task_screen.dart';
import 'package:todo_list/widgets/task_list.dart';
import 'package:provider/provider.dart';
class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () { showModalBottomSheet(context: context,builder:(context)=> AddTaskScreen()); },
        child: Icon(Icons.add,size: 30.0,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: EdgeInsets.only(top: 60.0,left: 30.0,bottom: 30.0,right: 30.0),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child:
                Icon(Icons.list,size: 30.0,color: Colors.lightBlueAccent,)
                ),
                SizedBox(height:10.0),
                Text('Todo List'
                ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks'
                  ,style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,

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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)
                      ,topRight: Radius.circular(20.0)),

              ),
              child: TaskList()
            ),
          )
        ],
      ),
    );
  }

}


