import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img.jpg',
                width: 220,
                height: 220,
              ),
              const SizedBox(height: 25),
              const Text(
                'Chat with Professional Advisor',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Register Now',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50, // Adjusted width for country code
                      child: TextField(
                        controller: countrycode,
                        style: const TextStyle(
                          fontSize: 18.7, // 10% larger font size for country code
                          //fontWeight: FontWeight.bold,
                        ),
                        decoration:
                        const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value){
                          phone = value;
                        },
                        style: const TextStyle(
                          fontSize: 18.7,
                          // fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(


                  onPressed: ()  {



                    Navigator.pushNamed(context, '/otp');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    WidgetStateProperty.all(Colors.blue), // Button color
                    foregroundColor:
                    WidgetStateProperty.all(Colors.white), // Text color
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15), // Button padding
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    elevation: WidgetStateProperty.all(5), // Shadow elevation
                  ),
                  child: const Text(
                    "GET OTP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}