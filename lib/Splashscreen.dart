import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statefull/SwitchingPage.dart';
import 'package:statefull/main.dart';

class SplashScreen extends StatefulWidget {  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Switchingpage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Center(child: Text("CALCULATOR", style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800, color: Colors.red),)),
        ),
      ),
    );
  }}
