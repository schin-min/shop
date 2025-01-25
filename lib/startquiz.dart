import 'package:flutter/material.dart';
import 'package:udemy_execise_1/question_screen.dart';


class Startquiz extends StatelessWidget {
  const Startquiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
                opacity: 0.6,
                child: Image.asset("asset/images/questionlogo.webp")),
            const SizedBox(
              child: FlutterLogo(size: 150),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Learn Flutter the fun way"),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const QuestionScreen()));
                },
                child: const Text("Start Quiz")),
          ],
        ),
      ),
    );
  }
}
