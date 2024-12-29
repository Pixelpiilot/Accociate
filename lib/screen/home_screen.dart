import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/globel.dart';
class  HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  }



  @override
  Widget build(BuildContext context) {


    mq = MediaQuery.sizeOf(context);

    return const Scaffold(
      body: Center(


         child: Text('Walcome to home screen'),

      ),
    );
  }
}
