import 'package:e_commerce/models/top_carusel_model.dart';
import 'package:e_commerce/models/trending_carusel_model.dart';
import 'package:e_commerce/widgets/interest_carusel.dart';
import 'package:e_commerce/widgets/justin_carusel.dart';
import 'package:e_commerce/widgets/top_carusel.dart';
import 'package:e_commerce/widgets/trending_carusel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  final TopCarusel carusel;
  final TrendingCarusel trending;
  HomeScreen({this.carusel, this.trending});
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        children: <Widget>[
          TopCaruselWidget(),
          SizedBox(
            height: 5.0,
          ),
          sales_image(),
          SizedBox(
            height: 5.0,
          ),
          TrendingCarusels(),
          SizedBox(
            height: 5.0,
          ),
          today_pickimage(),
          SizedBox(
            height: 5.0,
          ),
          JuisInCarusels(),
          SizedBox(
            height: 5.0,
          ),
          InterestCarusel(),
        ],
      ),
    );
  }
}

//sales image methode
Widget sales_image() {
  return Container(
    margin: EdgeInsets.only(
      left: 6.0,
      right: 6.0,
    ),
    height: 300.0,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5.0,
      ),
    ]),
    child: Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new AssetImage('lib/images/sale.jpg'),
        ),
      ),
    ),
  );
}

//sales image methode
Widget today_pickimage() {
  return Container(
    margin: EdgeInsets.only(
      left: 6.0,
      right: 6.0,
    ),
    height: 300.0,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5.0,
      ),
    ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 10),
          child: Text(
            'Today Pick',
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
        ),
        Container(
          height: 240.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage('lib/images/trend3.jpg'),
            ),
          ),
        ),
      ],
    ),
  );
}
