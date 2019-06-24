import 'package:flutter/material.dart';
import 'package:startup_namer/fragment/yingxiao.dart';
import 'package:startup_namer/fragment/kaidian.dart';
import 'package:startup_namer/fragment/kehu.dart';
import 'package:startup_namer/fragment/wode.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new MyBottomNavigationBar(),
        );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyBottomNavigationBarState();
  }
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Yingxiao(),
    Kehu(),
    Kaidian(),
    Wode(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new Scaffold(
            body:  Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: new BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('微营销'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),
                  title: Text('客户'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.filter_none),
                  title: Text('开店'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('我的'),
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue[200],
              onTap: _onItemTapped,
            )
        )
    );
  }
}
