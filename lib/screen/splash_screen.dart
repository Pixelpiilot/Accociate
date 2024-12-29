import 'package:flutter/material.dart';
import 'package:project616/screen/phone.dart';

import '../helper/globel.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4),() {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const MyPhone()));
    } );
  }


  @override
  Widget build(BuildContext context) {


    mq = MediaQuery.sizeOf(context);

    return Scaffold(

      body: Center(
        child: Card(
          color: Colors.blue,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)),),

          child: Padding(
            padding: EdgeInsets.all(mq.width * .05),
            child: Image.asset('assets/images/Logo.png', width: mq.width * .18, ),
          ),

        ),

      ),
    );
  }
}
