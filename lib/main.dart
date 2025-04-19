import 'package:flutter/material.dart';
import 'converter_page.dart'; 

void main() {
  runApp(MyConverterApp());
}

class MyConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      home: ConverterPage(), 
      debugShowCheckedModeBanner: false,
    );
  }
}
