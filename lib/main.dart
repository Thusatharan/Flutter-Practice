// ignore_for_file: public_member_api_docs, always_specify_types

import 'package:flutter/material.dart';
import 'package:learning/screens/chapter_4/image_widget.dart';
import 'package:learning/screens/chapter_4/input_widget.dart';
import 'package:learning/screens/chapter_4/input_widgets/single_input_widgets.dart';
import './screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        primarySwatch: Colors.indigo,
        fontFamily: 'Glory',
        textTheme: const TextTheme(
            headline1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Glory',
        )),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext ctx) => HomeScreen(),
        '/image': (BuildContext ctx) => ImageWidgetScreen(),
        '/input': (BuildContext ctx) => InputWidgetScreen(),
        '/single_input': (BuildContext ctx) => SingleInputScreen(),
      },
    );
  }
}
