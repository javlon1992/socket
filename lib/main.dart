import 'package:flutter/material.dart';
import 'package:socket/pages/home_page.dart';
import 'package:socket/pages/streambuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Stream(),
      home: HomePage(),
    );
  }
}

