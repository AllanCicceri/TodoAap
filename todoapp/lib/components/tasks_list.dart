import 'package:flutter/material.dart';
import '../models//Task.dart';

class TasksList extends StatelessWidget {
  final List<Task> _tasks;

  TasksList(this._tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _tasks.length,
      itemBuilder: ((context, index) {
        final task = _tasks[index];

        return ListTile(
          title: Text(task.title),
          subtitle: Text(task.description),
        );
      }),
    );
  }
}
