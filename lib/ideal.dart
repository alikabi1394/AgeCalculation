import 'package:flutter/material.dart';

import 'MyDrawer.dart';


class Ideal extends StatelessWidget {
  const Ideal({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("الوزن المثالي"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 240, 179, 47),
        ),
         drawer: MyDrawer(),
    ));
  }
}