import 'package:flutter/material.dart';

import '../widget/widget_support.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}





class _HomeState extends State<Home> {

  bool finance = false,
      legal = false,
      tax = false,
      business = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.only(left: 8,top: 8,bottom: 8,right: 5),
                      child: Image.asset("images/logo3.png", height: 30,
                        color: Color(0xc3148dfd),
                        width: 30,
                        fit: BoxFit.cover,
                      ),

                    ),
                    Container(

                      child: Text('CCOCIATE',
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                    ),
                  ],
                ),


                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(15),
                  //decoration: BoxDecoration(
                  //color: Colors.white),
                  child: Icon(Icons.notifications_none_outlined,
                    size: 32,
                    color: Colors.blue,),
                ),
              ],

            ),
            // Container(
            //margin: EdgeInsets.only(left: 20),
            // child: Text('Connect with your Advisor',
            // style: AppWidget.haderTextFeildStyle(),
            //),
            // ),
            SizedBox(height: 30,),
            Container(
                margin: EdgeInsets.only(right: 20 ,left: 20),
                child: showItem()

            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('Top Advisors',
                style: AppWidget.topTextFeildStyle(),
              ),
            ),
            SizedBox(height: 10,),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(

                    onTap: (){

                      Navigator.push(context,MaterialPageRoute(builder: (context) => Details()));
                    },

                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10), // 10% rounded corners
                                child: Image.asset(
                                  'images/profile.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text("Tom Parker",
                                style: AppWidget.nameTextFeildStyle(),
                              ),
                              Text("Finance",
                                  style:TextStyle(
                                    fontSize: 15,
                                    color: Colors.black38,
                                  )
                              ),
                              Text("\$25/min",
                                style: AppWidget.priceTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 2,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('images/profile.jpg',

                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,

                              ),
                            ),
                            SizedBox(height: 4,),
                            Text("Tom",
                              style: AppWidget.nameTextFeildStyle(),
                            ),


                            Text("Finance",
                                style:TextStyle(
                                  fontSize: 15,
                                  color: Colors.black38,
                                )
                            ),
                            Text("\$25/min",
                              style: AppWidget.priceTextFeildStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('images/profile.jpg',

                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,

                              ),
                            ),
                            SizedBox(height: 4,),
                            Text("Tom Parker",
                              style: AppWidget.nameTextFeildStyle(),
                            ),


                            Text("Finance",
                                style:TextStyle(
                                  fontSize: 15,
                                  color: Colors.black38,
                                )
                            ),
                            Text("\$25/min",
                              style: AppWidget.priceTextFeildStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),





            SizedBox(height: 20,),


            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Material(

                elevation: 1,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,

                child: Container(
                  //decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(14),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/profile.jpg", height: 100, width: 100,

                          fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 20,),

                      Column(
                        children: [
                          Container(

                              width: MediaQuery.of(context).size.width/2,
                              child:Text("Rine Callman", style: AppWidget.nameTextFeildStyle(),)),


                          Container(

                            width: MediaQuery.of(context).size.width/2,
                            child:Text("Finance Advisor", style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                            ),

                            ),
                          ),
                          SizedBox(height: 35),

                          Container(

                            width: MediaQuery.of(context).size.width/2,
                            child:Text("\$30/min", style: AppWidget.priceTextFeildStyle()

                            ),
                          ),



                        ],
                      )
                    ],


                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          children: [
            GestureDetector(
              onTap: () {
                finance = true;
                legal = false;
                tax = false;
                business = false;
                setState(() {

                });
              },
              child: Material(
                elevation: 5,

                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                      color: finance ? Colors.blue.shade50 : Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/finance.png", height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                      color: finance ? Colors.black : Colors.black),
                ),
              ),
            ),

            SizedBox(height: 3,),
            Text('Finance ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        ),

        Column(
          children: [
            GestureDetector(
              onTap: () {
                finance = false;
                legal = true;
                tax = false;
                business = false;
                setState(() {

                });
              },
              child: Material(
                elevation: 5,

                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                      color: legal ? Colors.blue.shade50 : Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/law.png", height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                      color: legal ? Colors.black : Colors.black),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Text('Legal ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                finance = false;
                legal = false;
                tax = true;
                business = false;
                setState(() {

                });
              },
              child: Material(
                elevation: 5,

                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                      color: tax ? Colors.blue.shade50 : Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/tax.png", height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                      color: tax ? Colors.black : Colors.black),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Text('Tax ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Column(
            children:
            [
              GestureDetector(
                onTap: () {
                  finance = false;
                  legal = false;
                  tax = false;
                  business = true;
                  setState(() {

                  });
                },
                child: Material(
                  elevation: 5,

                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: business ? Colors.blue.shade50 : Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("images/bus.png", height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: business ? Colors.black : Colors.black),
                  ),
                ),
              ),

              SizedBox(height: 3,),
              Text('Business ',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
            ]
        ),


      ],);
  }
}