import 'package:flutter/material.dart';
import 'package:udemy_execise_1/data/questions.dart';
import 'package:udemy_execise_1/question_summary.dart';

class Result extends StatefulWidget {
   Result({required this.answers,super.key});
  List<String> answers ;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
   
   
  @override
  Widget build(BuildContext context) {
    List<String> results = widget.answers;
    List<Map<String,Object>> getSummaryList (){

      
    List<Map<String,Object>> summary = [];

    for(int i = 0;i<results.length;i++){
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer': results[i],

    });
    }
    return  summary;
   }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),

      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Center(child: QuestionSummary(getSummaryList())),
              TextButton(
                onPressed: (){}, 
                child:const Text("Restart quiz!")
                ),
                
            ],
          ),
        ),
      ),
    );
  }

}