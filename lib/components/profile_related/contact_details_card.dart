import 'package:flutter/material.dart';

class ContactDetailsCard extends StatelessWidget {
  final String email;
  final String phone;

  const ContactDetailsCard({
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,      
      child: Container(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 8),
              Row(
              children: [
                Icon(Icons.alternate_email),
                SizedBox(width: 8),
                Text(
                email,
                style: TextStyle(fontSize: 16),
                ),
              ],
              ),
            SizedBox(height: 4),
              Row(
              children: [
                Icon(Icons.smartphone),
                SizedBox(width: 8),
                Text(
                '+$phone',
                style: TextStyle(fontSize: 16),
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