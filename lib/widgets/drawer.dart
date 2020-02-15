import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
            icon: Icons.account_circle,
            text: 'Profile',
          ),
          _createDrawerItem(
            icon: Icons.error,
            text: 'About',
          ),
          _createDrawerItem(
            icon: Icons.vpn_key,
            text: 'Change Password',
          ),
          Divider(),
          _createDrawerItem(icon: Icons.shopping_cart, text: 'Shopping Cart'),
          _createDrawerItem(icon: Icons.perm_media, text: 'Wallet'),
          _createDrawerItem(icon: Icons.favorite, text: 'WishList'),
          _createDrawerItem(icon: Icons.power_settings_new, text: 'LogOut'),
          Divider(),
          _createDrawerItem(icon: Icons.settings, text: 'Account Setting'),
        ],
      ),
    );
  }
}

//drawer header

Widget _createHeader() {
  return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 80),
              width: 65.0,
              height: 65.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/images/iqbal.jpg"))),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 80),
              child: Text(
                "Syed Iqbal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 5, right: 20, top: 90, bottom: 20),
              child: Text(
                'iqbalsyed406@gmail.com',
                style: TextStyle(fontSize: 12.0,color: Colors.grey),
              ),
            ),
          ],
        )
      ]));
}

//drawer items

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
