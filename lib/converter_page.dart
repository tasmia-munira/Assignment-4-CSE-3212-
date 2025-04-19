import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController _controller = TextEditingController();
  String _result = "";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Unit Converter"),
        backgroundColor: const Color.fromARGB(255, 7, 201, 181),
        centerTitle: true,
        elevation: 4,
      ),
      
    );
  }
}
