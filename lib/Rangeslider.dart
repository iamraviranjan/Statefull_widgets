import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Range_Sliders extends StatefulWidget {
  var namefromHome;

  Range_Sliders(this.namefromHome);

  @override
  State<Range_Sliders> createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<Range_Sliders> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
      ),
      body:
         Container(
           child:  Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RangeSlider(
                values: values,
                min: 0,
                max: 100,
                divisions: 20,
                labels: RangeLabels(
                  values.start.round().toString(),
                  values.end.round().toString(),
                ),
                onChanged: (RangeValues newValues) {
                  setState(() {
                    values = newValues;
                  });
                },
             ),
             Text(" ${widget.namefromHome}", style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800, color: Colors.green), ),
             ],
              ),
           ),
         ),


    );
  }
}


