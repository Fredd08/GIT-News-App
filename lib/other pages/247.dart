import 'package:flutter/material.dart';

class news247 extends StatefulWidget {
  const news247({super.key});

  @override
  State<news247> createState() => _news247State();
}

class _news247State extends State<news247> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h*0.08,
          )

      ]),
    );
  }
}
