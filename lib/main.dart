import 'package:flutter/material.dart';
import 'package:udemy_execise_1/gradientcontainer.dart';
import 'package:udemy_execise_1/startquiz.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
    
      routes: {
        '/g':(context)=>const Gradientcontainer(),
        '/':(context)=>const Startquiz(),
      },
    );
  }
}