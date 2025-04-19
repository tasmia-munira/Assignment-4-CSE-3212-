import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController _controller = TextEditingController();
  String _result = "";

  
  void _convertToMiles() {
    double km = double.tryParse(_controller.text) ?? 0;
    double miles = km * 0.621371;
    setState(() {
      _result = "$km km = ${miles.toStringAsFixed(2)} miles";
    });
  }

  void _convertToKm() {
    double miles = double.tryParse(_controller.text) ?? 0;
    double km = miles / 0.621371;
    setState(() {
      _result = "$miles miles = ${km.toStringAsFixed(2)} km";
    });
  }

  void _clear() {
    _controller.clear();
    setState(() {
      _result = "";
    });
  }

  
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
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: _convertToMiles,
                            label: Text("Km → Miles"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 61, 226, 55),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: _convertToKm,
                            label: Text("Miles → Km"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 57, 171, 247),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      ElevatedButton.icon(
                        onPressed: _clear,
                        label: Text("Clear"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 245, 128, 128),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                _result.isEmpty ? "Result" : _result,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
