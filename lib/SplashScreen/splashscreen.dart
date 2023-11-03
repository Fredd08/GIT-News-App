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
            height: h * 0.4,
            width: double.infinity,
            child: Image.asset("assets/5G.jpg"),
          ),
          Container(
              height: h * 0.5,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left:10,
                    
                      child: Text(
                    "Explore and follow topics",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ))
                ],
              )),
        ],
      ),
    );
  }
}
