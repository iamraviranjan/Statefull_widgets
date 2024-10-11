import 'package:flutter/material.dart';
import 'package:statefull/Splashscreen.dart';
import 'package:statefull/myprofile.dart';
import 'Rangeslider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  // passing data from one to another screen.
  var nameControlers = TextEditingController();

 var no1Controller = TextEditingController();
 var no2Controller = TextEditingController();

 var result= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var sum= no1+no2;

                        result = "The Addition of $no1 and $no2 is $sum";

                        setState(() {

                        });

                      }, child: Text('Add')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var sub= no1-no2;

                        result = "The substraction of $no1 and $no2 is $sub";

                        setState(() {

                        });

                      }, child: Text('Sub')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var mul = no1*no2;

                        result = "The $no1 multilply into $no2 is  $mul";
                        setState(() {

                        });

                      }, child: Text('Mul')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var times= no1/no2;

                        result = "The $no1 can be divided  by $no2, ${times.toStringAsFixed(2)} times ";

                        setState(() {

                        });

                      }, child: Text('Div')),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(21), child: Text( result , style: TextStyle(fontSize: 25, color: Colors.white),),),

                SizedBox(
                  height: 50,
                  // GO Back.

                  child:
                   ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Go back'),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TextField(
                    controller: nameControlers,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPprofile(nameControlers.text.toString()),));
                }, child: Text("My Profile")),

                // Range slider
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Range_Sliders(nameControlers.text.toString()),));
                }, child: Text("Range")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
