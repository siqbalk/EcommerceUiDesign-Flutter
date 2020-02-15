import 'package:e_commerce/models/top_carusel_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopCaruselWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(
            margin: EdgeInsets.only(left: 6.0, right: 6.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ]),
            height: 117.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: carusel.length,
              itemBuilder: (BuildContext context, int index) {
                TopCarusel topCarusel = carusel[index] ;

                return GestureDetector(
                  onTap: () {
                    print('some text');
                  },
                  child: Container(
                    // margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 40.0),
                    padding: EdgeInsets.only(top: 10.0),
                    // padding: EdgeInsets.only(left: 10.0),
                    height: 110.0,
                    width: 85.0,
                    child: Column(
                      children: <Widget>[
                        new Container(
                          width: 67.0,
                          height: 70.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage(topCarusel.imagUrl),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          topCarusel.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }

}