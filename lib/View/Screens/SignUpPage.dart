import 'package:flutter/material.dart';
import 'package:settlyintership/Components/ForgotPassword.dart';
import 'package:settlyintership/Components/Text/LoginText.dart';
import 'package:settlyintership/Data/Data.dart';
import 'package:settlyintership/View/Screens/LoginPage.dart';
import 'package:settlyintership/View/Screens/MapScreen/MapScreen.dart';

import '../../Components/Text/TextField.dart';

class SignUpScreen extends StatelessWidget {

  TextEditingController _fullName=TextEditingController();
  TextEditingController _streetArea=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _confirmPassword=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("Sign Up",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.withOpacity(0.8)
              ),),
            ),

            // FullName
            TextInputField(
              controller: _fullName,
              hintText: "Fullname",
              isObsure: false,),

            SizedBox(height: 10,),

            // Street Area
            TextInputField(
              controller: _streetArea,
              hintText: "Street Area",
              isObsure: false,
            ),
            SizedBox(height: 10,),

            //Land Mark
            TextInputField(
              controller: _email,
              hintText: "Email",
              isObsure: false,
            ),
            SizedBox(height: 10,),

            // Password
            TextInputField(
              controller: _password,
              hintText: "Password",
              isObsure: true,
            ),
            const SizedBox(height: 10,),

            // Confirm Password
            TextInputField(
              controller: _confirmPassword,
              hintText: "Confirm Password",
              isObsure: false,
            ),

            //Forgot Password
            const ForgotPassword(),
            // Login and Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Sign in
                Container(
                  padding:const EdgeInsets.only(top: 20),
                  height: 50,
                  child: InkWell(
                    onTap: () async{
                     await GetData(
                          fullName: _fullName.text,
                          streetArea: _streetArea.text,
                          password: _password.text,
                          email: _email.text).SignUp();
                    },
                    child:LoginText(x: false),
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top: 20),
                  height: 50,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child:LoginText(x: true,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
