import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text('20207155 전찬수'),
        ),
        body : SingleChildScrollView(
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text : 'Nice',
                  style: TextStyle(fontSize:20,color:Colors.black),
                  children: [
                    TextSpan(
                      text: "2",
                      style: TextStyle(fontStyle:FontStyle.italic),
                      children: [
                        TextSpan(text: 'meet'),
                        TextSpan(
                          text: 'U',
                          style:TextStyle(color:Colors.green)
                        ),
                      ]
                  ),

                ]
                ),
              ),
              ]




            //   Container(
            //     margin: EdgeInsets.only(bottom: 5),
            //     color: Colors.yellow,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(width: 50, height: 100, color: Colors.red,),
            //         Container(width: 50, height: 50, color: Colors.green,),
            //         Container(width: 50, height: 150, color: Colors.blue,),
            //       ],
            //     ),
            //   ),
            //   Container(
            //     margin: EdgeInsets.only(bottom: 5),
            //     color: Colors.yellow,
            //     height: 200,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [
            //         Container(width: 50, height: 100, color: Colors.red,),
            //         Container(width: 50, height: 50, color: Colors.green,),
            //         Container(width: 50, height: 150, color: Colors.blue,),
            //       ],
            //     ),
            //   ),
            //   Container(
            //     margin: EdgeInsets.only(bottom: 5),
            //     color: Colors.yellow,
            //     height: 200,
            //     child: Stack(
            //       children: [
            //         Container(color: Colors.red,),
            //         Container(width: 100, height: 100, color: Colors.green,),
            //         Container(width: 50, height: 50, color: Colors.blue,),
            //       ],
            //     ),
            //   ),
            // ],
          ),
        ),
    ),
    );
  }
}