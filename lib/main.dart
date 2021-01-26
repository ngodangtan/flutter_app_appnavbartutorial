import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Title',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();


}
class _MyHomePageState extends State<MyHomePage>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home',
    style: optionStyle),
    Text('Money',style: optionStyle),
    Text('Friends',style: optionStyle),
    Text('Settings', style: optionStyle)
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('NAV BAR TITLE')
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: "Money"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Friends"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );

  }
}