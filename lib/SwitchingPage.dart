import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'main.dart';

class Switchingpage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switching Page"),
      ),

      body: Container(
        color: Colors.purple,
        child: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Flutter Demo Home Page'),));
          },
            child: Text('Next'),),
        ),

        ),
    );
  }
}
