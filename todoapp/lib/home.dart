import 'package:flutter/material.dart';
import 'package:todoapp/components/task_form.dart';
import 'package:todoapp/components/tasks_list.dart';
import 'package:todoapp/models/task_model.dart';
import 'components/task_card.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<TaskModel> _tasksList = [];

  _addTask(String title, String desc) {
    setState(() {
      TaskModel myTask = TaskModel('dsadsad', 'vo', 'vovozinhanha');

      _tasksList.add(myTask);
    });
  }

  _showAddTaskFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TaskForm(_addTask);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoList'),
        actions: [
          Container(
              padding: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () => _showAddTaskFormModal(context),
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.white,
              ))
        ],
      ),
      body: _tasksList.length == 0
          ? Text('No tasks today')
          : Column(
              children: _tasksList.map((task) {
                return Task(task.title, task.description);
              }).toList(),
            ),
    );
  }
}
