import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyProfile"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 207, 175, 87),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Placeholder(),
          
        ),
      ),
    );
  }
}
