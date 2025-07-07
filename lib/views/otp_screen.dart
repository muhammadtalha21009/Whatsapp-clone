import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_app_project/views/profile_screen.dart';
import 'package:whats_app_project/widgets/uihelper.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Verifing your number',
            style: TextStyle(
              color: Color(0xFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            const Text('You’ve tried to register +923088706154'),
            const Text('recently. Wait before requesting an sms or a call.'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('with your code.'),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const Text(
                    ' Wrong number?',
                    style: TextStyle(color: Color(0xFF00A884), fontSize: 15),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customController(otp1Controller),
                const SizedBox(width: 10),
                Uihelper.customController(otp2Controller),
                const SizedBox(width: 10),
                Uihelper.customController(otp3Controller),
                const SizedBox(width: 10),
                Uihelper.customController(otp4Controller),
                const SizedBox(width: 10),
                Uihelper.customController(otp5Controller),
                const SizedBox(width: 10),
                Uihelper.customController(otp6Controller),
              ],
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {},
              child: const Text(
                'Didn’t receive code?',
                style: TextStyle(color: Color(0xFF00A884), fontSize: 15),
              ),
            ),

            const Spacer(),
            Center(
              child: Uihelper.CustomButton(
                callback: () {
                  Get.to(ProfileScreen());
                },
                buttonName: 'Next',
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
