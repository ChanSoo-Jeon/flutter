import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyApp>
    with SingleTickerProviderStateMixin {

  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User('홍길동','0100001','a@a.com'),User('김길동','0100001','b@b.com'),
      User('이길동','0100001','c@c.com'),User('박길동','0100001','d@d.com'),
      User('최길동','0100001','e@e.com'),User('강길동','0100001','f@f.com'),
      User('송길동','0100001','g@g.com'),User('한길동','0100001','h@h.com'),
    ];
    List<String> cities = ['서울시','인천시','부산시','대구시','대전시','광주시','울산시','춘천시'];
    DateTime dateValue = DateTime.now();
    TimeOfDay timeValue = TimeOfDay.now();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab bar'),
          bottom: TabBar(
            controller: controller,
            tabs: [
              Tab(text:'One'),
              Tab(text: 'Two'),
              Tab(text: 'Three'),

            ]
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Center(
              child: ListView.separated(
                itemCount: users.length,
                itemBuilder: (context,index) {
                  return ListTile(
                    leading:CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/big.jpeg'),
                    ),
                    title: Text(users[index].name),
                    subtitle: Text(users[index].phone),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {
                      print(users[index].name);
                    },
                  );
                },
                separatorBuilder: (context,index) {
                  return Divider(height:2, color: Colors.black,);
                },
              ),


      ),
              Center(
                child: GridView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context,index) {
                    return Card(
                      child: Column(
                        children: [Text(cities[index]), Image.asset('images/big.jpeg')],
                      ),
                    ) ;
                  },
                  // scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
                ),
              ),
            Center(
              child: Text(
                'Three Screen',
                style : TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
            )
          ],
        )
      ),
    );
  }
}
