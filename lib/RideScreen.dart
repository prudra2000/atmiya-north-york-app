import 'package:flutter/material.dart';

class RideScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rides'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      body: Center(
        child: Text("Coming Soon",
          style: 
            TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
    )
    );
  }
}