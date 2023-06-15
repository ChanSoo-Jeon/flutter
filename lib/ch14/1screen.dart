import 'package:flutter/material.dart';
import 'user.dart';
import 'package:intl/intl.dart';

class OneScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('One Screen'),
        ),
        body:Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('One Screen',style: TextStyle(color: Colors.white, fontSize:30),),
                ElevatedButton(
                    child: Text("Go Two"),
                    onPressed: () async {
                      // Navigator.pushNamed(context, '/two');
                      final result = await Navigator.pushNamed(
                        context,
                        '/two',
                        arguments: {
                          "arg1" : 10,
                          "arg2" : "hello",
                          "arg3" : User("kkang","Seoul")
                        }
                      );
                      //print('result : ${(result as User).name}');
                      showDialog(context: context,
                          builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('dialog'),
                          content : Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget> [
                                  Text('name: ${(result as User).name}'),
                                  Text('address: ${(result as User).address}'),
                            ],
                          ),
                        );
                          });
                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}