import 'package:flutter/material.dart';
import '1screen.dart';
import '2screen.dart';
import '3screen.dart';
import '4screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => TwoScreen(),
        //'/three': (context) => ThreeScreen(),
        //'/four' : (context) => FourScreen(),
      },
        onGenerateRoute: (settings) {
        if (settings.name == '/three') {
          return MaterialPageRoute(builder: (context) => ThreeScreen());
        }
        else if (settings.name == '/four') {
          return MaterialPageRoute(
            builder: (context) => FourScreen()
          );
        }

       },
    );
  }
}