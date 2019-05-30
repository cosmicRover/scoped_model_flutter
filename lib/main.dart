import 'package:flutter/material.dart';
import 'package:scoped_model_flutter/App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: App(),
    );
  }
}
