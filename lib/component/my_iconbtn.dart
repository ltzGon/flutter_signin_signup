import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
const MyIconButton({super.key,
  required this.imagPath,});

  final String imagPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 187, 187, 187),
      ),
      child: Image.asset(
        imagPath,
        height: 40,
      ),
    );
  }
} // Widget