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
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Icon(Icons.search_outlined,color: Colors.grey,),
                SizedBox(
                  width: w*0.01,
                ),
                Text("Search",style: TextStyle(color: Colors.grey,fontSize: 18),)

              ],
            )
          )
        ],
      ),
    );
  }
}