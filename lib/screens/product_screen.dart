import 'package:e_commerce/models/productscreen_model.dart';
import 'package:e_commerce/widgets/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  ProductScreenState createState() => ProductScreenState();
}

class ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'Product List',
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
      body: SafeArea(
          child: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 6.0, right: 6.0, top: 10.0),
          height: 60.0,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ]),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Text('SORT',
                    style: TextStyle(color: Colors.grey, fontSize: 13.0)),
              ),
              Container(
                margin: EdgeInsets.only(left: 60.0),
                height: 37.0,
                width: 2.0,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'REFINE',
                  style: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
              ),
            ],
          ),
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p1.jpg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'lib/images/model.jpg',
                          height: 210.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p3.jpg'),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Blackberry',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.0),
                            child: Icon(
                              Icons.bookmark_border,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Image.asset('lib/images/p4.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p1.jpg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p6.jpg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p3.jpg'),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Blackberry',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.0),
                            child: Icon(
                              Icons.bookmark_border,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/images/p1.jpg'),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Blackberry',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.0),
                            child: Icon(
                              Icons.bookmark_border,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'lib/images/model.jpg',
                          height: 210.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 8.0, right: 6.0, top: 10.0, bottom: 5.0),
                  width: 165.0,
                  height: 300.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset('lib/images/menM3.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 53.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Blackberry',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 37.0),
                              child: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('\$699'),
                            Text(
                              '\$12,99',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text('\$500',
                                style: TextStyle(color: Colors.orangeAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ])),
      bottomNavigationBar: BottomNavigationbar(),
    );
  }
}

//bottom Sheet

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'SORT BY',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Popularity',
                  style: TextStyle(fontSize: 15.0, color: Colors.blueAccent),
                ),
              ),
              Text(
                'New',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              Text(
                'Discount',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              Text(
                'Price: High-Low',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              Text(
                'Price: Low-High',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ],
          ),
        );
      });
}
