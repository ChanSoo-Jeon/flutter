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
          title : Text('Scroll View'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
            Container(
              height: 300,
              child: Row(
                children: [
                  Container(width: 100, color: Colors.red,),
                  Expanded(flex: 1, child: Container(color: Colors.orange,)),
                  Expanded(flex: 1, child: Container(color: Colors.yellow,)),
              ],
            ),
          ),
            Container(
              height:300,
              color: Colors.green,
              child: Row(
                children: [
                  Image.asset('images/lab_instagram_icon_1.jpg'),
                  Image.asset('images/lab_instagram_icon_2.jpg'),
                  Image.asset('images/lab_instagram_icon_3.jpg'),
                  Spacer(),
                  Image.asset('images/lab_instagram_icon_4.jpg'),
    ],
    ),
    ),
              Container(height:300, color: Colors.blue,),
            ],
        ),
      ),
    ),
    );
  }
}