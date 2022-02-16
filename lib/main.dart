import 'package:flutter/material.dart';
import 'package:oi_tolgoo/screens/home_screen.dart';
import 'package:oi_tolgoo/screens/list_screen.dart';
import 'package:oi_tolgoo/quizs/test.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тапшырма 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:Bashkybet(),
    );
  }
}

