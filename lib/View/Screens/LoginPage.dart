import 'package:flutter/material.dart';
import 'package:settlyintership/Components/ForgotPassword.dart';
import 'package:settlyintership/Components/Text/LoginText.dart';
import 'package:settlyintership/Components/Text/TextField.dart';
import 'package:settlyintership/Components/signUpButton.dart';
import 'package:settlyintership/View/Screens/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _email=TextEditingController();
    TextEditingController _password=TextEditingController();
    bool click=false;

    return Scaffold(

      body: Container(
        width: double.maxFinite,

        padding: EdgeInsets.only(top: 150,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text("Login",style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w600,
                color: Colors.blue.withOpacity(0.5)
              ),),
            ),

            Flexible(child: Container(),flex: 2,),

            //Username or Email
            TextInputField(
              controller:_email ,
              hintText: "Username or Email",
              isObsure: false,),

            const SizedBox(height: 10,),

            // Password
            TextInputField(
              controller: _password,
              hintText: "Password",
              isObsure: true,),

            //Forgot Password
            ForgotPassword(),
            // Login and Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Login
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    padding:const EdgeInsets.only(top: 20,left: 20,right: 20),
                    height: 50,
                    child: LoginText(x:true),
                  ),
                ),
                // Sign in
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Container(
                    padding:EdgeInsets.only(top: 20),
                    height: 50,
                    child:LoginText(x: false,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Flexible(child: Container(),flex: 1,),
            Container(child: Text("Mapper"),),
          ],
        ),
      ),
    );
  }
}
