import 'package:flutter/material.dart';
import 'package:settlyintership/View/Screens/HomeScreen/MainScreenHome.dart';
import 'package:settlyintership/View/Screens/IntroScreens/Screen0.dart';
import 'package:settlyintership/View/Screens/MapScreen/MapScreen.dart';
import 'package:settlyintership/View/Screens/SignUpPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: HomeScreen(),
  ));
}

