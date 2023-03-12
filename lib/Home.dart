import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'Counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("أفكار"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 226, 228, 126),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: MyCounter(),
        ),
      ),
    );
  }
}