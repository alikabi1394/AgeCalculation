import 'package:flutter/material.dart';
import 'intro.dart';
import 'login.dart';
import 'createAccount.dart';
import 'Counter.dart';
import 'MyDrawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("افكار"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 167, 214, 56),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Intro(), Login(), CreateAccount(), MyCounter()],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 197, 251, 200),
      ),
    );
  }
}