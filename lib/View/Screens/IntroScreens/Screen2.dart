import 'package:flutter/material.dart';

class SecondWelcomeS extends StatelessWidget {
  const SecondWelcomeS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(2),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(height: 50,),
                  Text("Mapper \n ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                      color: Colors.white.withOpacity(0.5)
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Find your way at Mapper",style: TextStyle(color: Colors.black.withOpacity(0.5)),)
                ],
              )
            ],
          ),
        )
    );
  }
}
