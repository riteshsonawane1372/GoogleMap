import 'package:flutter/material.dart';

class UserModel{

 late String fullName;
  late String email;
   late String addr;

  UserModel({
    required this.fullName,
    required this.addr,
    required this.email
});

  //Map

UserModel.fromJson(Map<String,dynamic> json){

  this.email=json['email'];
  this.fullName =json['fullname'];
  this.addr =json['addr'];
}

Map<String,dynamic> toMap(){

  return {
    'fullname':this.fullName,
    'email':this.email,
    'addr':this.addr
  };
}

}