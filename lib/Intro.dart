
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
            width: 100,
            height: 100,
            child: Image.asset("images/sdau.png")),
        //Text('Hello World!'),
        //Text('Welcome'),
        Text(' Hello World ', style: TextStyle(fontStyle: FontStyle.italic)),
        Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
