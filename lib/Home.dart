import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'Counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //حذف كلمة DEBUG
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("صحتنا حياتنا"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 240, 179, 47),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: MyCounter(),
        ),
      ),
    );
  }
}