// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:newsapp/other%20pages/sec.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: GestureDetector(
                  onTap: () {
                     Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => SEC()));
                  },
                  child: Container(
                    height: h * 0.8,
                    width: w * 0.92,
                    child: 
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                          child: Image.asset(
                            "assets/coinbase.jpeg",
                            height: h * 0.8,
                            width: w * 0.92,
                            fit: BoxFit.cover,
                          ),
                        ),),
                ),),),
                      Positioned(
                          top: h * 0.7,
                          child: Center(
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Container(
                                    width: w * 0.98,
                                    height: 80,
                                    child: Column(
                                      children: [Text(
                                        "Coinbase warned by SEC of potencial \nsecurities charges-CNBC",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Row(
                                       mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                         Padding(
                                           padding: const EdgeInsets.only(right:15.0),
                                           child: Icon(Icons.share,color: Colors.black,),
                                         ),
                                         
                                         Icon(Icons.bookmark,color: Colors.black,),
                                         Padding(
                                           padding: const EdgeInsets.only(left:15.0,right:15),
                                           child: Icon(Icons.favorite_outline,color: Colors.red,),
                                         ),

                                        ],
                                      )
                                      ]
                                    ))),
                          ))
                  
                
              
            
              ],
            )
          ],
        ),
      ),
    );
  }
}
