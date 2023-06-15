import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  onPressed() {
    print('icon button is clicked...');
  }

  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('20207155 전찬수'),
        ),


        body: Column(


          children:[
              Container(
                // height: Size.infinite.height,
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     begin:  Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [
                //       Colors.purple,
                //       Colors.green,
                //     ],
                //
                //   ),
                // ),
                child : Center(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(
                          image:AssetImage('images/big.jpeg'),fit: BoxFit.cover),
                    ),
                    width:200,
                    height:200
                ),
              ),
            ),


            RichText(
                text: TextSpan(
                    text: "Nice",
                    style : TextStyle(fontSize:20,color:Colors.blue),
                    children: [
                      TextSpan(
                          text:"2",
                          style : TextStyle(color:Colors.red,fontStyle: FontStyle.italic),
                          children: [
                            TextSpan(text:'meet',style: TextStyle(color:Colors.black),
                            ),
                            TextSpan(
                                text:'U',
                                style:TextStyle(color:Colors.green)
                            )
                          ]
                      )
                    ]
                )


            ),
            GestureDetector(
              child : Image.asset('images/icon/user.png'),
              onTap: () {
                print('image click');
              },
              onVerticalDragStart: (DragStartDetails details) {
                print('vertical drag start...global position : ${details.globalPosition.dx}, ${details.globalPosition.dy}');
                print('vertical drag start...local position : ${details.localPosition.dx}, ${details.localPosition.dy}');
              }
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton click');
              },
              child: Text('touch'),
              style: ButtonStyle(backgroundColor : MaterialStateProperty.all<Color>(Colors.red)),
            ),
            Icon(Icons.alarm,size : 100, color:Colors.red,),
            FaIcon(FontAwesomeIcons.baby, size:100,),
            IconButton(
              onPressed: onPressed,
              icon:Icon(Icons.beach_access,size:100,color:Colors.blue)
            ),







        ],
        ),

      ),
    );
  }
}