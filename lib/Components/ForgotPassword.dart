import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            padding: EdgeInsets.only(top: 10),
            child: Text("Forgot Password?",style: TextStyle(
                color: Colors.grey.withOpacity(0.6)
            ),))
      ],
    );
  }
}
