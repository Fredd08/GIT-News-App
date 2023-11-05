import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,),
        actions: [
          Icon(Icons.menu,color: Colors.black,),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Explore today's\nworld News",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(113, 158, 158, 158),borderRadius: BorderRadius.circular(12)
              ),
              height: 45,
              width: w*0.9,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Icon(Icons.search_outlined,color: Colors.grey,size: 25,),
                  ),
                  SizedBox(
                    width: w*0.01,
                  ),
                  Text("Search here",style: TextStyle(color: Colors.grey,fontSize: 18),)
          
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset("assets/1.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}