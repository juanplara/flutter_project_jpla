import 'package:flutter/material.dart';
import 'package:jpla_project/view/home.dart';
import 'package:jpla_project/view/listview_1.dart';
import 'package:jpla_project/view/profile.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeMain(),
    Profile(),
    ListView1(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        /* appBar: AppBar(
          title: const Text('JPLA'),
          backgroundColor: Colors.black,
        ), */    
        body: Center( 
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil de usuario',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              label: 'Lista de juegos',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          onTap: _onItemTapped,
    ),
    );
  }
}