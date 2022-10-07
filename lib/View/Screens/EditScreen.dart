import 'package:flutter/material.dart';

import '../../Components/Text/TextField.dart';
import 'LoginPage.dart';

class EditScreen extends StatelessWidget {

  final String fullName;
  final String addr;
  final String email;

  EditScreen({
    required this.fullName,
    required this.addr,
    required this.email
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController _fullName=TextEditingController();
    TextEditingController _streetArea=TextEditingController();
    TextEditingController _email=TextEditingController();
    TextEditingController _password=TextEditingController();



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
              child: Text("Edit Profile",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.withOpacity(0.8)
              ),),
            ),

            // FullName
            TextInputField(
              controller: _fullName,
              hintText: "${fullName}",
              isObsure: false,),

            SizedBox(height: 10,),

            // Street Area
            TextInputField(
              controller: _streetArea,
              hintText: "${addr}",
              isObsure: false,
            ),
            SizedBox(height: 10,),

            //Land Mark
            TextInputField(
              controller: _email,
              hintText: "${email}",
              isObsure: false,
            ),
            SizedBox(height: 10,),

            TextInputField(
              controller: _email,
              hintText: "New email",
              isObsure: false,
            ),
            SizedBox(height: 10,),

            // Password
            TextInputField(
              controller: _password,
              hintText: "Password of old Email",
              isObsure: true,
            ),
            SizedBox(height: 10,),


            // Login and Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Sign in
                Container(
                  padding:EdgeInsets.only(top: 20),
                  height: 50,
                  child: const Text("Edit",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue
                  ),),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child:const Text("Login",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.green
                  ),),
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
