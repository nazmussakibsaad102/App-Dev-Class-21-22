import 'package:flutter/material.dart';
import 'package:my_profile/BusinessPage.dart';
import 'package:my_profile/HomePage.dart';
import 'package:my_profile/ProfilePage.dart';
import 'package:my_profile/SchoolPage.dart';
import 'package:my_profile/VideoPage.dart';

///Stateful Widget VS Stateless Widget
///Stateful Widget has action
///Stateless Widget does not have it.
///
/// Stateful Widget is heavy
/// Stateless Widget is light.
///
/// Navigation Page should be stateful
///

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
 int _selectedIndex =  0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    VideoPage(),
    SchoolPage(),
    ProfilePage()
  ];


  ///functionname(a,b){
  ///Scaffold(abc(cba()))
  ///return a+b;
  ///}
  ///
  /// setState()

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaPI Social"),
        actions: [
          Icon(Icons.access_alarm_outlined)
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business), label: 'Business'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school), label: 'School'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), label: 'Profile'
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
