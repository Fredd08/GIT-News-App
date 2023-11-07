import 'package:flutter/material.dart';
import 'package:newsapp/other%20pages/247.dart';
import 'package:newsapp/specs/pictures.dart';

import '../Login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        
        
        backgroundColor: Colors.white70,
      ),
      endDrawer: Drawer(
        
        child: ListView(
          children: [
            SizedBox(
              height: h*0.07,

            ),
            ListTile(title: GestureDetector(
              onTap: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>news247()));
              },
              child: Text("24/7",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),)
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Explore today's\nworld News",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(113, 158, 158, 158),
                    borderRadius: BorderRadius.circular(12)),
                height: 45,
                width: w * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      "Search here",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < picture.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Container(
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(boxShadow: [BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey,
                            offset: Offset(6, 6),
                            blurStyle: BlurStyle.inner
                          )],borderRadius: BorderRadius.circular(16)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "${picture.elementAt(i)["1"]}",
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Latest News",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                SizedBox(
                  width: w * 0.56,
                ),
                GestureDetector(
                  onTap:() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => news247())));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Container(
                  height: 350,
                  width: 330,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/5a.png",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
