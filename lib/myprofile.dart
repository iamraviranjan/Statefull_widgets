import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPprofile extends StatelessWidget {
  var namefromHome;

  MyPprofile(this.namefromHome);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("profile"),
     ),

     body: Container(
       color: Colors.purple,
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Welcome $namefromHome ", style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800, color: Colors.grey),),
             ElevatedButton(onPressed: (){
               Navigator.pop(context);
             },
               child: Text("Back"),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
