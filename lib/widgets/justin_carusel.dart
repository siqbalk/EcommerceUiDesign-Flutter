import 'package:e_commerce/models/justin_carusel_model.dart';
import 'package:e_commerce/models/trending_carusel_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JuisInCarusels extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
              margin: EdgeInsets.only(
                left: 6.0,
                right: 6.0,
              ),
              height: 230.0,
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
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                      child: Text(
                        'JustIn',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 7.0,),
                    Container(

                      margin: EdgeInsets.only(left: 6.0, right: 6.0),
                    
                      height: 190.0,
                     

                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: trendings.length,
                          itemBuilder: (BuildContext context, int index) {
                            JustIn juisInCarusels = justins[index];
                            return GestureDetector(
                              onTap: () => print('Abc'),
                              child: Container(
                                height: 240.0,
                                    width: 270.0,
                                    
                                  child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 130.0,
                                    width: 230.0,
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new AssetImage(juisInCarusels.imageUrl),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                   Text( juisInCarusels.boldname,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                   Text( juisInCarusels.simplename,style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                ],
                              )),
                            );
                          }),
                    )
                  ]));
  }

}