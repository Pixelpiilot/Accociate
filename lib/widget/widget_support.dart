
import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle boldTextFeildStyle(){

    return TextStyle(
      color: Color(0xc3148dfd),
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',);
  }

  static TextStyle haderTextFeildStyle(){

    return TextStyle(
      color: Colors.blueAccent.shade100,
      fontSize: 20,
      //fontWeight: FontWeight.w100,
      fontFamily: 'Poppins' );
  }

  static TextStyle topTextFeildStyle(){

    return TextStyle(
        color: Colors.black,
        fontSize: 15,
        //fontWeight: FontWeight.w100,
        fontFamily: 'Poppins' );
  }

  static TextStyle nameTextFeildStyle(){

    return TextStyle(
        color: Colors.black87,
        fontSize: 16.0,
        //fontWeight: FontWeight.w500,
        fontFamily: 'Poppins' );
  }


  static TextStyle priceTextFeildStyle(){

    return TextStyle(
        color: Colors.lightBlue,
        fontSize: 15.0,
        //fontWeight: FontWeight.w100,
        fontFamily: 'Poppins' );
  }



  static TextStyle loginTextFeildStyle(){

    return TextStyle(
        color: Colors.black87,
        fontSize: 25.0,
        //fontWeight: FontWeight.w100,
        fontFamily: 'Poppins' );
  }


  static TextStyle logTextFeildStyle(){

    return TextStyle(
        color: Colors.black38,
        fontSize: 18.0,
        //fontWeight: FontWeight.w100,
        fontFamily: 'Poppins' );
  }


}