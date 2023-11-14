// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:newsapp/other%20pages/sec.dart';
import 'package:share_plus/share_plus.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  bool isfavorite = false;
  bool isbookmarked = false;

  void Favorite() {
    setState(() {
      isfavorite = !isfavorite;
      if (isbookmarked) {
        SnackBar(content: Text("Liked"));
        print("Favorite");
      } else {
        print("favorite removed");
      }
    });
  }

  void Bookmarked() {
    setState(() {
      isbookmarked = !isbookmarked;
      if (isbookmarked) {
        SnackBar(content: Text("Bookmarked"));
        print("Bookmarked");
      } else {
        print("Bookmarked removed");
      }
    });
  }

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
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SEC()));
                      },
                      child: Container(
                        height: h * 0.8,
                        width: w * 0.92,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            "assets/coinbase.jpeg",
                            height: h * 0.8,
                            width: w * 0.92,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: h * 0.67,
                    child: Center(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Container(
                              width: w * 0.98,
                              height: 103,
                              child: Column(children: [
                                Text(
                                  "Coinbase warned by SEC of potencial \nsecurities charges-CNBC",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15.0),
                                        child: IconButton(
                                            onPressed: () {
                                              _shareApp();
                                            },
                                            icon: Icon(
                                              Icons.share,
                                              color: Colors.black,
                                            ))),
                                    IconButton(
                                      onPressed: () {
                                        Bookmarked();
                                      },
                                      icon: isbookmarked ?   Icon(Icons.bookmark_outline,
                                        color:isbookmarked? Colors.green : null) :  Icon (Icons.bookmark,
                                         )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15),
                                      child: IconButton(onPressed: (){
                                        Favorite();
                                      }, icon: isfavorite ? Icon(
                                        Icons.favorite_outline,
                                        color: isfavorite ? Colors.red : Colors.red,
                                      ) : Icon(Icons.favorite,color: Colors.red,),)
                                    ),
                                  ],
                                )
                              ]))),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _shareApp() {
  String message = "Share";

  Share.share(message);
}
