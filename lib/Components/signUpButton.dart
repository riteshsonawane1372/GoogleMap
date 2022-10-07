import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  
  final String buttonText;

  
  SignUpButton({
    required this.buttonText,

});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(5)
            )
        ),
        child:Center(
            child:
            Text("${buttonText}",
              style: TextStyle(color: Colors.greenAccent),)));
  }
}
