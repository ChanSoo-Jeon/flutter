import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar : AppBar(
            title: Text('회원가입'),
          ),
          body: TestScreen()
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<TestScreen> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? id;
  String? password;
  String? passconf;
  String? email;

  @override
  Widget build(BuildContext context) {
    return Column(


      children: [



        Text('회원가입'),
        Form(
          key : _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: '이름'),
                validator: (value) {
                  if(value?.isEmpty ?? false) {
                    return '이름을 입력해주세요';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  firstName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '아이디'),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return '아이디를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  id= value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '암호',
                    hintText:"영어 대/소문자,숫자 조합 8글자 이상" ),
                style: TextStyle(fontSize: 15.0),
                obscureText: true,

                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return '암호를 입력해주세요';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  password = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '암호확인'),
                style: TextStyle(fontSize: 15.0),
                obscureText: true,
                validator: (value) {
                  if(value?.isEmpty ?? false) {
                    return '암호를 입력해주세요';
                  }
                  if (value?.compareTo(password!) == 0) {
                    return '암호를 확인해주세요.';
                  }
                  return null;


                },

                onSaved: (String? value) {
                  passconf = value;
                }
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '이메일'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if(value?.isEmpty ?? false) {
                    return '이메일을 입력해주세요';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  email = value;
                },
              )
            ],
          ),
        ),

        ElevatedButton(
          onPressed: () {

            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
            }
          },
        child: Text('확인'),
      ),
          ],




    );
  }
}