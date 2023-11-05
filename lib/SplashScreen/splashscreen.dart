import 'package:flutter/material.dart';
import 'package:newsapp/SignUp/signup.dart';

import '../Login/login.dart';

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
              decoration: BoxDecoration(boxShadow: []),
              height: h * 0.47,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/5G.PNG",
                    fit: BoxFit.cover,
                    height: h * 0.47,
                  ),
                  Positioned(
                      right: 20,
                      top: 50,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login())));
                          });
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              )),
          Container(
              height: h * 0.52,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      top: 30,
                      left: 26,
                      child: Text(
                        "Explore and follow topics",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 58,
                      left: 26,
                      child: Text(
                        "relevant to you",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 120,
                      left: 26,
                      child: Text(
                        "Created with curated content on",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 143,
                      left: 26,
                      child: Text(
                        "thousands of topics from",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 166,
                      left: 26,
                      child: Text(
                        "world-renowed podcasts, local outlets",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 189,
                      left: 26,
                      child: Text(
                        "and the community",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 280,
                      left: 20,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login())));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                         height: 60,
                         width: 130,
                          
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                      top: 280,
                      left: 180,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                       height: 60,
                       width: 130,
                        
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
                              });
                            },
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
