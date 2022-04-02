import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionSelected = 0;


  void _incrementQuestionSelected() {
    setState(() {
      _questionSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List questions = [
      {
        'text': 'what is a car brand?',
        'answer': ['ashda', 'ashda', 'ford', 'ashda', 'ashda']
      },
      {
        'text': 'what is a animal?',
        'answer': ['ashda', 'cat', 'ashda', 'ashda', 'ashda']
      },
      {
        'text': 'what is a object?',
        'answer': ['ashda', 'ashda', 'ashda', 'knife', 'ashda']
      },
      {
        'text': 'what is a plant?',
        'answer': ['ashda', 'ashda', 'ashda', 'ashda', 'rose']
      },
      {
        'text': 'what is a ship?',
        'answer': ['cruiser', 'ashda', 'ashda', 'ashda', 'ashda']
      }
    ];

    for(var answer in questions[_questionSelected]['answer']){

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(
                questions[_questionSelected]['text'],
              ),
              Answer(questions[_questionSelected]['answer'][0],_incrementQuestionSelected),
              Answer(questions[_questionSelected]['answer'][1],_incrementQuestionSelected),
              Answer(questions[_questionSelected]['answer'][2],_incrementQuestionSelected),
              Answer(questions[_questionSelected]['answer'][3],_incrementQuestionSelected),
              Answer(questions[_questionSelected]['answer'][4],_incrementQuestionSelected),
            ],
          ),
        ),
      ),
    );
  }
}
