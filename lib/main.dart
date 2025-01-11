
//import 'package:advisor/pages/home.dart';
import 'package:project616/pages/home.dart';
import 'package:project616/pages/signup.dart';
//import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:Home(),
    );
  }
}
