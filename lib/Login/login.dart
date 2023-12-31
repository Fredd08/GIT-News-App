import 'package:flutter/material.dart';
import 'package:newsapp/HomePage/homepage.dart';
import 'package:newsapp/SignUp/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool pas=false;
  void passe(){
    pas=!pas;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
      
          children: [
            SizedBox(
              height: h * 0.20,
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
              height: h*0.04,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              height: 60,
              width: w*0.7,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: 
                InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color:Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: h*0.02,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              height: 60,
              width: w*0.7,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: pas,
                onTap: passe,
                decoration: 
                InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color:Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none)
                  
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: h*0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: w*0.54,
                ),
                Text("Forgot Password?",style: TextStyle(color:Colors.white),textAlign: TextAlign.right,),
              ],
            ),
            SizedBox(
              height: h*0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),color: Colors.white,borderRadius: BorderRadius.circular(15)
                ),
                height: 65,
                width: w*0.7,
                child: Center(child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 22),)),
              ),
            ),
            SizedBox(
              height: h*0.03,
            ),
            Text("OR",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: h*0.03,
            ),
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/apple.png",height: 50,),
                  ),
                ),
                SizedBox(
                  width: w*0.04,
                ),
                Card(
                  child: Container(
                    
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/google.png",height: 50,),
                  ),
                ),
                
              ],
            ),
            SizedBox(
              height: h*0.04,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member? ",style: TextStyle(fontSize: 17,color: Colors.white),),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
                        });
                      },
                      child: Text("SignUp",style: TextStyle(fontSize: 16,color: Colors.yellow),)),
                  ],
                )

          ],
        ),
      ),
    );
  }
}
