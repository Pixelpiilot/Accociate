
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project616/screen/home_screen.dart';
import 'package:project616/screen/phone.dart';
import 'package:project616/screen/splash_screen.dart';
import 'package:project616/screen/otp.dart';
    void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);







  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        // Define the 'otp' route here
        '/otp': (context) => const MyOtp(),


        // Define the  'phone' route here
        '/phone': (context) => const MyPhone(),


        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}

