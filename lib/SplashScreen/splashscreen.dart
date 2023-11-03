import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow:[] ),
            height: h * 0.45,
            width: double.infinity,
            child: Image.asset("assets/5G.PNG"),
          ),
          Container(
              height: h * 0.5,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left:20,
                    
                      child: Text(
                    "Explore and follow topics",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  Positioned(
                    top: 40,
                    left:20,
                    
                      child: Text(
                    "relevant to you",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  Positioned(
                    top: 15,
                    left:10,
                    
                      child: Text(
                    "Created",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ))
                ],
              )),
        ],
      ),
    );
  }
}
