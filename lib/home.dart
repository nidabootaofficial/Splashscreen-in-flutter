import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Material(
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              child: Text("Home"),
            ),
          ),
        ),
      ),
    );
  }
}
