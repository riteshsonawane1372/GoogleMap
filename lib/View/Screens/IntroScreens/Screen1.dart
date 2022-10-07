import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomeScreen extends StatelessWidget  {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(height: 50,),
                Text("Welcome to, \n ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                    color: Colors.black.withOpacity(0.5)
                ),
                ),
                SizedBox(height: 30,),
              ],
            )
          ],
        ),
      )
    );
  }
}
