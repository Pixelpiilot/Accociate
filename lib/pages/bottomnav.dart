import 'package:project616/pages/history.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'profile.dart';
import 'wallet.dart';

class NaveBar extends StatefulWidget {
  const NaveBar({super.key});

  @override
  State<NaveBar> createState() => _NaveBarState();
}

class _NaveBarState extends State<NaveBar> {


  int currentTabIndex = 0;
  late List <Widget> pages;
  late Widget currentPages;
  late Home homepage;
  late Wallet wallet;
  late Profile profile;
  late History history;

  @override
  void initState(){


    homepage = Home();
    wallet = Wallet();
    profile = Profile();
    history = History();
    pages = [homepage,   wallet,  profile, history];


    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.transparent,
        color: Colors.black45,
        //Color.fromRGBO(184, 197, 225, 1.0),
        animationDuration:Duration(milliseconds: 500) ,
        onTap: (int index){

          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
          Icon(Icons.home, color: Colors.white, size: 28.0,),
          Icon(Icons.person_3_outlined, color: Colors.white ,size: 28.0,),
          Icon(Icons.account_balance_wallet_outlined, color: Colors.white, size: 28.0,),
          Icon(Icons.history, color: Colors.white, size: 28.0,),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
