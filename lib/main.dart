import 'package:flutter/material.dart';
import 'homepage.dart'; 

void main() {
  runApp(MyConverterApp());
}

class MyConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      home: HomePage(), 
      debugShowCheckedModeBanner: false,
    );
  }
}
