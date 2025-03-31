import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imagePath;

  const ProfileCard({
    required this.name,
    required this.bio,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, // Add shadow
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0), // Add box border radius
      ),
      child: Container(
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0), // Add border radius to container
      ),
      child: Row(
        children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            ),
          ),
          ),
        ),
        Expanded(
          child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              name,
              style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center the text horizontally
            ),
            SizedBox(height: 16), // Increase the space between additional text and bio
            Text(
              bio,
              style: TextStyle(
              fontSize: 18,
              ),
            ),
            ],
          ),
          ),
        ),
        ],
      ),
      ),
    );
  }
}