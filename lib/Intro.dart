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
            width: 150, height: 150, child: Image.asset('images/sdau.png')),
        Text('Hello World!'),
        Text('Welcome back'),
        Text('Welcome back'),
      ],
    );
  }
}