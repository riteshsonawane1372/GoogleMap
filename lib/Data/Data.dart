import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GetData{
  
  final String fullName;
  final String streetArea;
  final String password;
  final String email;

  GetData({
    required this.fullName,
    required this.streetArea,
    required this.password,
    required this.email
});
  
   Future SignUp() async{
    
    var url = 'http://10.0.2.2:3000/stelly/create-account';
    try{
      var res =await Dio().post(url,
          data: {
            "userName":fullName,
            "addr":streetArea,
            "email":email,
            "password":password
          }
      );
      print(res);
      return true;
    }
    catch(e){
      print(e);
      return;
    }

    
  }
  
}

