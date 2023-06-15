import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    Text('first screen',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('second screen',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('third screen',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('fourth screen',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(hintColor:Colors.white),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Text('AppBar Bottom Text'),
              ),
            ),

          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/big.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text("Appbar Title"),
          actions: [
            IconButton(icon: const Icon(Icons.add_alert),onPressed: () {},),
            IconButton(icon: const Icon(Icons.phone),onPressed: () {},),
          ],
        ),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),

        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'first',backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.business),label: 'second',backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.school),label: 'third',backgroundColor: Colors.purple),
            BottomNavigationBarItem(icon: Icon(Icons.info),label: 'fourth',backgroundColor: Colors.pink),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("Drawer Hearder"),
                decoration: BoxDecoration(color:Colors.blue,),
              ),
              ListTile(title: Text('Item1'),onTap:() {},),
              ListTile(title: Text('item2'),onTap: () {},)
            ],
          ),
        ),
      ),
    );
  }
}