import 'package:flutter/material.dart';

class nextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("We are now secondPage"),
      ),
      body: Center(
        child: Text("thank you for Submitting",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "times new roman"),),
      ),
    );
  }

}