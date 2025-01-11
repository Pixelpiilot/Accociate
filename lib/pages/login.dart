import 'package:project616/pages/signup.dart';
import 'package:project616/widget/widget_support.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Added SingleChildScrollView
        child: Container(
          height: MediaQuery.of(context).size.height, // Ensure it takes full screen height
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xc3148dfd),
                      Color(0xc3148dfd),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Text(""),
              ),
              Positioned(  // Using Positioned for better alignment
                top: 60,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "images/logo2.png",
                        width: MediaQuery.of(context).size.width / 1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 50),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,  // Prevents overflow
                          children: [
                            SizedBox(height: 28),
                            Text("Login", style: AppWidget.loginTextFeildStyle()),
                            SizedBox(height: 30),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.logTextFeildStyle(),
                                prefixIcon: Icon(Icons.email_outlined),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.logTextFeildStyle(),
                                prefixIcon: Icon(Icons.lock_outline),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            SizedBox(height: 40),  // Reduced to prevent overflow
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xc3148dfd),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),  // Reduced to prevent overflow
                    GestureDetector(

                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },

                      child: Text(
                        "Don't have an account? Sign Up",
                        style: AppWidget.topTextFeildStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
