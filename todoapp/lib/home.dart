import 'package:flutter/material.dart';
import 'package:todoapp/components/tasks_list.dart';
import 'package:todoapp/models/Task.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Task> _tasksList = [];

  _addTask() {
    print('teste');
    setState(() {
      Task myTask = Task('dsadsad', 'vo', 'vovozinhanha');

      _tasksList.add(myTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List'),
        actions: [
          Container(
              padding: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: _addTask,
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
                return Text(task.title);
              }).toList(),
            ),
    );
  }
}
