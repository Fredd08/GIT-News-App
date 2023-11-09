// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/other%20pages/247.dart';

class SEC extends StatefulWidget {
  const SEC({super.key});

  @override
  State<SEC> createState() => _SECState();
}

class _SECState extends State<SEC> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Container(
        height: 900,
        child: Stack(
          children: [
            
            Positioned(
              top: 1,
              child: Image.asset("assets/coinbase.jpeg",height: 330,fit:BoxFit.cover,)),
        Positioned(
          top: h*0.4,
          left: 1,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Container(
              height: 500,
              width: w*1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),color: Colors.white),
                child: Stack(
                
                  children: [
                    Positioned(
                      left: 10,
                      child: Text(
                        "Coinbase warned by SEC\nof potential securities\ncharges - CNBC",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 115,
                      child:
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(157, 158, 158, 158),borderRadius: BorderRadius.circular(25)),
                          height: 30,
                          width: 120,
                          child: Center(
                            child: Text(
                              "2023-03-22",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                     
                    ),
                    Positioned(
                      top: 130,
                      left:10,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "The SEC issued crypto exchange\nCoinbase a Wells notice,\nwarning the exchange that it identified potential violations of\nU.S secrities law.\nThe Securites and Exchange\nCommision issued crypto\nexchange Coinbase a Wells\nnotice, warning the company\nthat it identified potential\nviolations of U.S. securities law.\nCoinbase shares fell nearly...",
                          style: TextStyle(fontSize: 20, color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        )
          ],
        ),
      ),
    );
  }
}
