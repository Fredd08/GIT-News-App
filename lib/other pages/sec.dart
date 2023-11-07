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
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  child: GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>news247()));
                          },
                          child: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,)),
                ),
                Positioned(child: Image.asset("assets/coinbase.jpeg",height: 330,fit:BoxFit.cover,)),
            Positioned(
              top: h*0.4,
              left: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Container(
                  
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          "Coinbase warned by SEC\nof potential securities\ncharges - CNBC",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(157, 158, 158, 158),borderRadius: BorderRadius.circular(25)),
                          
                          child: Text(
                            "2023-03-22",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "The SEC issued crypto exchange\nCoinbase a Wells notice,\nwarning the exchange that it identified potential violations of\n U.S secrities law.\nThe Securites and Exchange\nCommision issued crypto\nexchange Coinbase a Wells\nnotice, warning the company\nthat it identified potential\nviolations of U.S. securities law.\nCoinbase shares fell nearly...",
                            style: TextStyle(fontSize: 22, color: Colors.black87),
                          ),
                        )
                      ],
                    )),
              ),
            )
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}
