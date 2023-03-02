import 'package:flutter/material.dart';



class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('----'),
            Text(' ...اكمال تسجيل الدخول من خلال  '),
            Text('----'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red),
              onPressed: () => {print("Sign in")},
              child: Text('Google'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey),
              onPressed: () => {print("Sign in")},
              child: Text('Apple'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue),
              onPressed: () => {print("Sign in")},
              child: Text('FaceBook'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('do you have an account ?'),
            Text('Create new account'),
          ],
        )
      ],
    );
  }
}
