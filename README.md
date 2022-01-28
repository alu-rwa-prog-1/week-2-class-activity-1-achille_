# Week2-Flutter-Widgets



#  Widget Project Name: Check list
My Widget project it's just an implementation of the list check like if maybe you want priotized some task compared to another task .


# Widget Project detail:

# 1) Void main()
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

we use this parte to run all the code. like along the code we will create the inheritance that will be associated to MyApp which allows to link all the classes to the main function


# 2) Class MyHomePage 

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

this page contains only the man page elements of our application. in a simple way it will display all the components of our widget which will be on the home page 


# 3) classe progress ,task and instructions 


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
  
  
it is the creation of our different tasks with the different and animations that it is necessary.
  
  
# Debug
  
 I developed my code on android studio view I installed modules that allows to check errors on my .en suite I used of Debug of android studio to see the different errors that it is necessary to manage. Generally the debugging takes time but allows to have or to submit the general problem of the code.
  
  https://user-images.githubusercontent.com/66226071/151591952-ad14cfb6-41ef-425a-a54f-a5dca8287aa4.PNG
  The link of the image above can show you the result of my work on android studio. 
