import 'package:e_commerce/models/interest_carusel_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestCarusel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        left: 6.0,
        right: 6.0,
      ),
      height: 350.0,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        ),
      ]),
      child: Column(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: RichText(
              text: TextSpan(
                  text: 'Since You,ve shown interest in',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Tshirts',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Container(
            height: 200.0,
            margin: EdgeInsets.only(left: 6.0, right: 6.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: interests.length,
              itemBuilder: (BuildContext context, int index) {
                Interest interest = interests[index];

                return GestureDetector(
                    onTap: () => print('Abc'),
                    child: Container(
                        height: 120.0,
                        width: 220.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 180.0,
                              width: 200,
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage(interest.imageUrl),
                                ),
                              ),
                            ),
                          ],
                        )));
              },
            ),
          ),
          Text(
            'United Colors Of Benetton',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text(
              'United Colors of Benetton Men Coral red Solid',
              style: TextStyle(fontSize: 13.0, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('\$900'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$900',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '40%off',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
