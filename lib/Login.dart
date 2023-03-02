import 'package:flutter/material.dart';



class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 100,
          child: Center(child: Text('Username')),
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 30,
          width: 100,
          child: Center(child: Text('Password')),
          color: Colors.white,
        ),
        Text('Reset password'),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green),
            onPressed: () => {print("Sign in")},
            child: Text("Sign in")),
      ],
    );
  }
}

