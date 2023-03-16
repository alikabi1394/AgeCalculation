import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 200,
            height: 200,
            child: Image.asset("images/saha.png")),
      //SizedBox(height: 20,),
        Text(' مرحبا بكم ', style: TextStyle(fontSize: 40)),
      // SizedBox(height: 20,),
      // Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold)),
      // SizedBox(height: 20,),

      ],
    );
  }
}