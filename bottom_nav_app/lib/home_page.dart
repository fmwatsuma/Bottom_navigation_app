import 'package:bottom_nav_app/pages/accounts.dart';
import 'package:bottom_nav_app/pages/home.dart';
import 'package:bottom_nav_app/pages/messages.dart';
import 'package:bottom_nav_app/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_index = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      selected_index = index;
    });
  }

  final List<Widget> _pages = [
  UserHome(),
  Messages(),
  Settings(),
  Accounts(),
       
     
       
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _pages[selected_index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
            onTap: _navigateBottomBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                
                ),
              ),
              BottomNavigationBarItem(
                label: "message",
                icon: Icon(
                  Icons.message,
                ),
              ),
              BottomNavigationBarItem(
                label: "settings",
                icon: Icon(
                  Icons.settings,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(
                  Icons.person,
                  semanticLabel: 'Account',
                ),
              ),
            ]));
  }
}
