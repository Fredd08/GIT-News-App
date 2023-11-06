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
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Container(
                  height: h * 0.8,
                  width: w * 0.92,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                        child: Image.asset(
                          "assets/coinbase.jpeg",
                          height: h * 0.8,
                          width: w * 0.92,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: h * 0.73,
                          child: Center(
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Container(
                                    width: w * 0.92,
                                    height: 60,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => SEC()));
                                      },
                                      child: Text(
                                        "Coinbase warned by SEC of potencial \nsecurities charges-CNBC",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ))),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
