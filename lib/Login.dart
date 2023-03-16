import 'package:flutter/material.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  final String? hint;
  const Login({
    super.key,
    this.hint,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool correctEntry = true;
  String username = "";
  String password = "";

  void goHomeScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  void checkUsernamePassword() {
    setState(() {
      if (username == "" || password == "") {
        correctEntry = false;
      } else {
        correctEntry = true;
        goHomeScreen();
        //.. الانتقال
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 200,
          margin: EdgeInsets.all(10),
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            textAlign: TextAlign.center,
            onChanged: (value) => {username = value},
            decoration: InputDecoration(hintText: 'ادخل اسم المستخدم'),
          ),
        ),
        Container(
          height: 30,
          width: 200,
          margin: EdgeInsets.all(10),
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            obscureText: true,
            // من اليمين لليسار
            //textAlign: TextAlign.right,
            // في الوسط
             textAlign: TextAlign.center,
            onChanged: (value) => {password = value},
            decoration: InputDecoration(hintText: 'ادخل كلمة المرور'),
          ),
        ),
        //Text('Reset password'),
        SizedBox(height: 10,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: checkUsernamePassword,
            child: Text("تسجيل الدخول"))
      ],
    );
  }
}