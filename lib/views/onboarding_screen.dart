import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_app_project/views/login_screen.dart';
import 'package:whats_app_project/widgets/uihelper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Center(child: Image.asset('assets/image 1.png', height: 220)),
          SizedBox(height: 40),
          Text(
            'Welcome to WhatsApp',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Read out'),
                  Text(
                    'Privacy Policy.',
                    style: TextStyle(color: Color(0xFF00A884)),
                  ),
                  Text(' Tap“Agree and continue”'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('to accept the'),
                  Text(
                    'Teams of Service',
                    style: TextStyle(color: Color(0xFF00A884)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),
          Uihelper.CustomButton(
            callback: () {
              Get.to(LoginScreen());
            },
            buttonName: 'Agree and Continue',
          ),
        ],
      ),
    );
  }
}
