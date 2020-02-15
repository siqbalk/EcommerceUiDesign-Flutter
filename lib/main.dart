import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/widgets/bottom_navigation_bar.dart';
import 'package:e_commerce/widgets/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'E-COMMERCE PRO',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Message sent");
              },
            )
          ],
        ),

        drawer: Drawers(),
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationbar(),
      ),
    );
  }
}
