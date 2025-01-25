import 'package:flutter/material.dart';
import 'package:udemy_execise_1/answer_button.dart';
import 'package:udemy_execise_1/data/questions.dart';
import 'package:udemy_execise_1/results.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final List<String> selectedAnswers = [];
  var currentQuestionIndex = 0;
  void answeredQuestion (){
    setState(() {
      
    });
  }

  void chooseAnswer (String answer){
   setState(() {
      selectedAnswers.add(answer);
      if(selectedAnswers.length == questions.length){
         Navigator.push(context,MaterialPageRoute(builder: (context)=>Result(answers:selectedAnswers )));
      }else{
        currentQuestionIndex++;
      }
   });
  }
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
        width: double.infinity,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text(currentQuestion.text,textAlign: TextAlign.center,),
             const SizedBox(height: 30,),
               ...currentQuestion.getShuffledAnswers().map((answer)
               => AnswerButton(answerText: answer,onTap:(){
                answeredQuestion();
                chooseAnswer(answer);
               } )),
        
              // AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
              // AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
              // AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
              // AnswerButton(answerText: currentQuestion.answers[3], onTap: (){})
          ],
        ),
            ),
      ),
    );
  }
}