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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(Icons.swap_horiz, size: 50, color: const Color.fromARGB(255, 7, 201, 181)),
                      SizedBox(height: 10),
                      Text(
                        "Enter value to convert",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
      
    );
  }
}
