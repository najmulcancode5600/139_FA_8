import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      appBar: AppBar(
        title: Text("Column and Row Layout"),
        centerTitle: true,
        backgroundColor: Color(0xFF78909C), 
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox("1", Colors.red),
              buildBox("2", Colors.green),
              buildBox("3", Colors.blue),
            ],
          ),

          Container(
            height: 100,
            width: 300,
            alignment: Alignment.center,
            color: Colors.orange,
            child: Text(
              "Large Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              smallBox("Left", Colors.purple),
              smallBox("Right", Colors.teal),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBox(String text, Color color) {
    return Container(
      height: 90,
      width: 90,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget smallBox(String text, Color color) {
    return Container(
      height: 60,
      width: 120,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
