import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:settlyintership/View/Screens/IntroScreens/Screen1.dart';
import 'package:settlyintership/View/Screens/LoginPage.dart';
import 'package:settlyintership/View/Screens/SignUpPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Components/signUpButton.dart';
import 'Screen2.dart';

class MainScreen extends StatefulWidget {


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final controller = PageController();


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const  EdgeInsets.only(bottom: 80,left: 20,right: 20,top: 10),
        child: ScrollConfiguration(
          behavior:const  ScrollBehavior().copyWith(overscroll: false),
          child: PageView(
            physics:const  ClampingScrollPhysics(),
            controller: controller,
            children: [
            const WelcomeScreen(),
             const SecondWelcomeS(),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IntroScreen
                      InkWell(
                        onTap: (){
                          Navigator.push(context, PageTransition(
                            child: SignUpScreen(),
                            type: PageTransitionType.leftToRight
                          ));
                        },
                          child:
                          SignUpButton(buttonText: 'Sign Up',)),
                      const SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, PageTransition(
                              child: LoginPage(),
                              type: PageTransitionType.fade
                          ));
                        },
                          child: SignUpButton(buttonText: 'Login',))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: (){
                controller.jumpToPage(3);
                setState((){});
              },
              child: Text("Skip"),
            ),
            // navigator Effect Dot
            Center(
              child: SmoothPageIndicator(
                effect: ScrollingDotsEffect(
                  dotColor: Colors.black.withOpacity(0.8),
                  activeDotColor: Colors.green.withOpacity(0.8),
                  dotHeight: 15,
                  dotWidth:3
                ),
                controller: controller,
                count: 3,
              ),
            ),
            TextButton(
              onPressed: (){
                controller.nextPage(duration: Duration(milliseconds: 100),curve: Curves.elasticInOut );
                setState((){});
              },
              child: Text("Next"),
            )

          ],
        ),
      ),
    );
  }
}
