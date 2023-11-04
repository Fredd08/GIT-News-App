import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          SizedBox(
            height: h * 0.25,
          ),
          Center(
            child: Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                 ),
            ),
          ),
          SizedBox(
            height: h*0.08,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white)
            ),
            height: 60,
            width: w*0.7,
            child: TextFormField(
              decoration: 
              InputDecoration(
                hintText: "Username",
                hintStyle: TextStyle(color:Colors.white),
                border: OutlineInputBorder(borderSide: BorderSide.none)
                
              ),
            ),
          ),
          SizedBox(
            height: h*0.03,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white)
            ),
            height: 60,
            width: w*0.7,
            child: TextFormField(
              decoration: 
              InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color:Colors.white),
                border: OutlineInputBorder(borderSide: BorderSide.none)
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
