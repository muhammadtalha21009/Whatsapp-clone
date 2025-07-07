import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_app_project/views/otp_screen.dart';
import 'package:whats_app_project/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? selectedCountry = 'Pakistan';
  String countryCode = '+92';
  TextEditingController phoneController = TextEditingController();

  final Map<String, String> countryCodes = {
    'Pakistan': '+92',
    'Turkey': '+90',
    'China': '+86',
    'Iran': '+98',
    'America': '+1',
    'Itly': '+39',
    'India': '+91',
  };

  List<String> countries = [
    'Pakistan',
    'Turkey',
    'China',
    'Iran',
    'America',
    'Itly',
    'India',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Enter your phone number',
            style: TextStyle(
              color: Color(0xFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Center(
            child: Column(
              children: [
                Text('WhatsApp will need to verify your phone'),
                Text('number. Carrier charges may apply.'),
                Text(
                  'What’s my number?',
                  style: TextStyle(color: Color(0xFF00A884)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          // Country Dropdown
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: DropdownButtonFormField<String>(
              value: selectedCountry,
              items: countries.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedCountry = newValue;
                    countryCode = countryCodes[newValue] ?? '';
                  });
                }
              },
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(),
                labelText: 'Select Country',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Phone Number Field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                  child: Text(
                    countryCode,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Phone number',
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height / 7),
          const Spacer(), // Pushes everything above to the top

          Center(
            child: Uihelper.CustomButton(
              callback: () {
                Get.to(OtpScreen());
              },
              buttonName: 'Next',
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
