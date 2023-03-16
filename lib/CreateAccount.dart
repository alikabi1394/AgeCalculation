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
          children: const [
           // Text('----'),
           // Text('Continue with'),
           // Text('----'),
          ],
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text('do you have an account ?'),
            //Text('Create new account'),
          ],
        )
      ],
    );
  }
}