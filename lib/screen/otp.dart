import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 62, // Increased width by 10%
      height: 62, // Increased height by 10%
      textStyle: const TextStyle(
        fontSize: 22, // Increased font size by 10%
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w700,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(137, 190, 234, 1.0),
          width: 2.2, // Increased border width by 10%
        ),
        borderRadius: BorderRadius.circular(10), // Increased radius by 10%
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: const Color.fromRGBO(114, 178, 238, 1),
        width: 2.2, // Increased border width by 10%
      ),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/secure-password.png',
                width: 150,
                height: 220,
              ),
              const SizedBox(height: 2),
              const Text(
                'Please enter the 6 digit code',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Pinput(
                length: 6,
                showCursor: true,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add OTP verification logic here
                    Navigator.pushNamed(context, '/home_screen');


                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: WidgetStateProperty.all(5),
                  ),
                  child: const Text(
                    "Verify phone number",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/phone', (route) => false);
                    },
                    child: const Text(
                      'Edit Phone Number?',
                      style: TextStyle(color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


