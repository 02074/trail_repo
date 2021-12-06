import 'package:flutter/material.dart';
import 'package:todolist/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      //the todolist() is a class in home_view.dart
      home: const TodoList(title: 'Flutter Demo Home Page'),
    );
  }
}

