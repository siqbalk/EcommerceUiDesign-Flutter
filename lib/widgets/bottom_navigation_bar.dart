import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    int _currentTab = 0;
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
            size: 25.0,
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 7.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
            color: Colors.grey,
            size: 25.0,
          ),
          title: Text(
            'Categories',
            style: TextStyle(
              fontSize: 7.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 25.0,
          ),
          title: Text(
            'Notification',
            style: TextStyle(
              fontSize: 7.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.grey,
            size: 25.0,
          ),
          title: Text(
            'Bag',
            style: TextStyle(
              fontSize: 7.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.image,
            color: Colors.grey,
            size: 25.0,
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: 7.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
    ;
  }
}
