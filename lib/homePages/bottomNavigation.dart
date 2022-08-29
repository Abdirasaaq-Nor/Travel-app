
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/homePages/HomePage.dart';
import 'package:travelapp/homePages/favorite.dart';
import 'package:travelapp/homePages/notifiaction.dart';
import 'package:travelapp/homePages/profile.dart';

class bottomNavaigation extends StatefulWidget {
  const bottomNavaigation({Key? key}) : super(key: key);

  @override
  State<bottomNavaigation> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<bottomNavaigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    favorite(),
    notification(),
    profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
       
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            label: 'Home',
            
             
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart, color: Colors.grey,),
            label: 'Favoriate',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.music, color: Colors.grey,),
            label: 'Music',
        
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey,),
            label: 'Profile',
         
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}




// import 'package:flutter/cupertino.dart';

// class bottom_navigation_bar extends StatelessWidget {
//   const bottom_navigation_bar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ();
//   }
// }

