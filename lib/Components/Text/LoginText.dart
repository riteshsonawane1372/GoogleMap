import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {

  // Yes bool is true will return SignUp
  bool x;
  LoginText({
    required this.x
});

  @override
  Widget build(BuildContext context) {
    return x? Text("Login",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.green
    ),):
    Text("Sign Up",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.blue
    ),);
  }
}
