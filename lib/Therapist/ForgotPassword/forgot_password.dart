import 'package:flutter/material.dart';
import 'package:lunan/Therapist/ForgotPassword/forgot_password_phone_number.dart';
import 'package:lunan/Therapist/ForgotPassword/forgot_password_success.dart';

//Forgot Password Page
class ForgotPasswordT extends StatelessWidget {
  const ForgotPasswordT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF5E9CF),
        iconTheme: const IconThemeData(color: Color(0xff4D455D)),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(children: <Widget>[
            Container(
              child: const Text(
                'Forgot Password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  color: Color(0xff4D455D),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Image(
                image: AssetImage('assets/forgotPassword.png'),
                width: 300,
                height: 200,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Enter the email address \nassociated with your account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: Color(0xff4D455D),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Text(
                'We will email you a link to\n reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Color(0xff4D455D),
                ),
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                keyboardType: TextInputType
                    .emailAddress, // Set input type to email address
                decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff7DB9B6)),
                        borderRadius: BorderRadius.circular(20))),

                onChanged: (value) {
                  // Handle changes in the input
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordSuccessT()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff7DB9B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Set the corner radius here
                    ),
                  ),
                  child: const Text(
                    'Submit',
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ForgotPasswordPhoneMethodT()),
                  );
                },
                child: const Text('Use mobile phone number instead'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}