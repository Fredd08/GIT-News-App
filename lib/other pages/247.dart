import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'general.dart';

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
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            SizedBox(
              height: h*0.08,
            ),
            Center(child: Text("24/7 News",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
            

ButtonsTabBar(
  
  unselectedBackgroundColor: Colors.white,
  unselectedBorderColor: Colors.white,
  backgroundColor: Colors.grey,
  borderWidth: 2,
  borderColor: Colors.black,
  labelStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
  unselectedLabelStyle: TextStyle(
    color: Colors.black,
    
  ),
  
  tabs: [
    Tab(text: "General",),
    Tab(text: "Top headlines",),
    Tab(text: "Health",),
    Tab(text: "Technology",),
    Tab(text: "Science",)
  ],
),
Expanded(
  child: TabBarView(
    children: <Widget>[
      General(),
      General(),
      General(),
      General(),
      General(),
    ],
  ),
)

            
      
        ]),
      ),
    );
  }
}
