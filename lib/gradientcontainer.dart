import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();
class Gradientcontainer extends StatefulWidget{
  const Gradientcontainer({super.key});
  
  @override
  State<Gradientcontainer> createState () {
    return _GradientcontainerState();
  }
}

class _GradientcontainerState extends State<Gradientcontainer> {
var randomNum =0;

void rollNum (){
  setState(() {
    setState(() {
              randomNum = randomizer.nextInt(6)+1;
            });
  });
}
@override
Widget build (BuildContext context){
  return  Scaffold(
    appBar: AppBar(
      title: const Text("Random number"),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$randomNum"),
        TextButton(
          onPressed: (){
            rollNum();
          }, 
          child: const Text("Press here"))
      ],
    ),
  );
}
}