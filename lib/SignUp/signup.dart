import 'package:flutter/material.dart';
import 'package:newsapp/Login/login.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    bool pas2=false;
  void passe2(){
    pas2=!pas2;
  }
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
      
          children: [
            SizedBox(
              height: h * 0.08,
            ),
            Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                   ),
              ),
            ),
            SizedBox(
              height: h*0.02,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              height: 55,
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
              height: h*0.03,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              height: 55,
              width: w*0.7,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: pas2,
                onTap: passe2,
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
            
            SizedBox(
              height: h*0.03,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),color: Colors.white,borderRadius: BorderRadius.circular(15)
              ),
              height: 65,
              width: w*0.7,
              child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 22),)),
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
                    Text("Already a member? ",style: TextStyle(fontSize: 17,color: Colors.white),),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                        });
                      },
                      child: Text("Sign In",style: TextStyle(fontSize: 16,color: Colors.yellow),)),
                  ],
                )

          ],
        ),
      ),
    );
  }
}