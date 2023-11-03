import 'package:flutter/material.dart';

import 'SplashScreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      home: const Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
