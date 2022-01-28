import 'package:flutter/material.dart';

// This fucntion main we use to run code ;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Task!',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}

//This page is Homepage of my application

class MyHomePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Exploration Planner!'),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );


  }
}


class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('instruction of my day :'),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

//This class We do to create liste of the difference Task ;

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: 'Wake-up'),
        TaskItem(label: 'Wash face'),
        TaskItem(label: 'Do breakfast'),
        TaskItem(label: 'Eat breakfast'),
        TaskItem(label: 'Enter in Class'),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  _Instruction createState() => _Instruction();
}



class _Instruction extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue) => setState(() => _value = newValue),
          value: _value,
        ),
        Text(widget.label),
      ],
    );
  }
}