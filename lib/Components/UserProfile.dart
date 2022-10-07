import 'package:flutter/material.dart';
import 'package:settlyintership/View/Screens/EditScreen.dart';
import 'package:settlyintership/View/Screens/SignUpPage.dart';

class UserProfile extends StatelessWidget {

   String fullName;
   String email;
   String addr;


 UserProfile({
     this.fullName="Guest login",
      this.email="guest@gmail.com",
      this.addr="You have logged in as guest no addr"

});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: (){
              if(fullName=='Guest login'){
                Navigator.push(context,
                MaterialPageRoute(builder: (_)=>SignUpScreen())
                );
              }
              else{Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_)=>EditScreen(
                    fullName: fullName,
                    email: email,
                    addr: addr,
                  ))
              );}

            },
            icon:Icon(Icons.edit_rounded,color: Colors.blue,)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Text("${fullName}",style: TextStyle(color: Colors.black),),
            SizedBox(height: 5,),
            Text("${email}",style: TextStyle(color: Colors.black),),
            SizedBox(height: 5,),
            Text("${addr}",
              style: TextStyle(color: Colors.black),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            SizedBox(height: 5,),

          ],
        ),
      ],
    );
  }
}
