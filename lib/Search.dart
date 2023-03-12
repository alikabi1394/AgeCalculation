import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 76, 163, 175),
        ),
         drawer: MyDrawer(),
        body: Text("تحديد المواقع",
            style: TextStyle(fontSize: 30, color: Colors.green[600], shadows: [
              Shadow(
                  color: Colors.red,
                  blurRadius: 3.0,
                  offset: Offset(10.0, 10.0))
            ])),
      ),
    );
  }
}
