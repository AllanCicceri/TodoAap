import 'package:flutter/material.dart';

class TaskForm extends StatefulWidget {
  final void Function(String, String) onSubmit;

  TaskForm(this.onSubmit);

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  _TaskFormState();

  @override
  Widget build(BuildContext context) {
    _submitForm() {
      widget.onSubmit('MeuTitulo', 'MinhaDescricao');
    }

    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
          ),
          TextButton(onPressed: _submitForm, child: Text('Submit')),
        ],
      ),
    );
  }
}
