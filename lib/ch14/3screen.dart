import 'package:flutter/material.dart';



class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Three Screen'),
        ),
        body:Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('three Screen',style: TextStyle(color: Colors.white, fontSize:30),),
                ElevatedButton(
                    child: Text("Go Fuor"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/four');
                    }),
                ElevatedButton(
                  child: Text('pop'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}