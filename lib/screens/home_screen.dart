import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/services/ApiService.dart';

var apiService = ApiService();
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [];
  int _questionIndex = 0;
  final _answerController = TextEditingController();

   Future<void> getData() async {
    questions = await apiService.fetchQuestion();
    if (mounted) {
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text(questions[_questionIndex].question),
          Form(
            child: Column(children: [
              TextFormField(
                controller: _answerController,
              ),
              ElevatedButton(
                onPressed: onPressed, 
                child: Text('Submit'))
            ],)
          )
          )
        ]), 
      )
    );
  }
}