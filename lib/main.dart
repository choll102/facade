import 'package:flutter/material.dart';
import 'stateWidget/facadeHomePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'facade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacadeHomePage(),
    );
  }
}

