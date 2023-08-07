import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/Whatsapp_bg.jpg'),
               // backgroundColor: Colors.teal,
                radius: 145,
              ),
              SizedBox(height: 60),
              Text(
                'Welcome to Whatsapp',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'Read our Privacy Policy ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.teal,
                  ),
                  children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add your logic for Privacy Policy here
                        },
                    ),
                    TextSpan(text: '. Tap "Agree and continue" to accept the '),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add your logic for Terms of Service here
                        },
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        // onPressed: () {
        // // Add your logic for the floating action button here
        // },
        // child: Icon(Icons.message),
      ),
    );
  }
}
