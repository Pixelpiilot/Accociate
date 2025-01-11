import 'package:flutter/material.dart';

import '../widget/widget_support.dart';





class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:  Color(0xffe4f2ff),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.blueAccent,
                  size: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/profile.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              children: [
                                Text(
                                  "Tom Parker",
                                  style:AppWidget.nameTextFeildStyle(),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Finance Advisor",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(height: 7),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.78,
                            child: Text(
                              "Hindi, English, Bengali",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$30/min",
                              style: AppWidget.priceTextFeildStyle(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "A fund manager is a professional responsible for overseeing and making investment decisions for a portfolio of securities on behalf of clients, such as individuals, institutions, or mutual funds. They aim to achieve specific financial objectives by allocating assets, analyzing market trends, and managing risks.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.chat, color: Colors.blue, size: 28),
              label: Text("Chat", style: TextStyle(color: Colors.blue,fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.blue),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.call, color: Colors.blue, size: 28),
              label: Text("Call", style: TextStyle(color: Colors.blue, fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.blue),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


