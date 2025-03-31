import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color; // New color attribute
  final Color backgroundColor; // New background color attribute

  const CustomButton({
    required this.onPressed,
    required this.text,
    required this.color, // Added color attribute
    required this.backgroundColor, // Added background color attribute
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
        backgroundColor: backgroundColor, // Set the button background color using the backgroundColor attribute
      ),
    );
  }
}