import "package:flutter/material.dart";
import 'package:flutter_news/Navigation/Navigation.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: home());
  }
}
