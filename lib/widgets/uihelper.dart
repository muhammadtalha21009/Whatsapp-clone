import 'package:flutter/material.dart';

class Uihelper {
  // ignore: non_constant_identifier_names
  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return Container(
      height: 45,
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xFF00A884),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: callback,
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  static customController(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 20),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
