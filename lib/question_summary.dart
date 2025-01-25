import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {

  final List<Map<String,Object>> summary;
  const QuestionSummary(this.summary,{super.key});

  @override
  Widget build(BuildContext context) {
    final numCorrectQuestions = summary.where(
      (data){
        return data['user_answer']==data['correct_answer'];
      }
    ).length;
    return Center(
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You answered ${summary.length} out of $numCorrectQuestions questions correctly!"),
              ...summary.map((data){
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: data['user_answer']==data['correct_answer']? Colors.greenAccent:Colors.redAccent,
                      child:Text("${(data['question_index'] as int)+1 }"),
                    ),
                    Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(height: 5,),
                        Text(data['user_answer']as String),
                        const SizedBox(height: 5,),
                        Text(data['correct_answer']as String),
                      ],
                    ),
                   const SizedBox(height: 10,),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}