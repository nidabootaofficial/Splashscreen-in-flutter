import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Material(
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(child: Image.asset("assets/images/splashimage.png")),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Welcome here",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }
}
