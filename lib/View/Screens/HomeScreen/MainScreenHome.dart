import 'package:flutter/material.dart';
import 'package:settlyintership/Components/UserProfile.dart';
import 'package:settlyintership/View/Screens/MapScreen/MapScreen.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Column(
          children: [
            // User Porfile
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
              child:UserProfile()
            ),
            const SizedBox(height: 20,),
            Container(
              padding:const EdgeInsets.only(left: 2,right: 2),
              width: double.maxFinite,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height/1.75,
              child: MapScreen(),
            )
          ],
        ),
      ),
    );
  }
}
