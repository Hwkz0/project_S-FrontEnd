import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 50, // Set the width to make it square
              height: 70, // Set the height to make it square
              child: ElevatedButton(
          onPressed: () {
            // Add your button 1 logic here
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Set the border radius to make it square
              side: BorderSide(color: Colors.indigo.shade900 , width: 3), // Set the border color
            ),
            backgroundColor: Colors.indigo.shade100, // Remove the button background color
            elevation: 0, // Set the elevation to 0
          ),
          child: Text(
            'Editeaza Profil',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Set the text color
            ),
          ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 50, // Set the width to make it square
              height: 70, // Set the height to make it square
              child: ElevatedButton(
          onPressed: () {
            // Add your button 1 logic here
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Set the border radius to make it square
              side: BorderSide(color: Colors.green.shade900 , width: 3), // Set the border color
            ),
            backgroundColor: Colors.green.shade100, // Remove the button background color
            elevation: 0, // Set the elevation to 0
          ),
          child: Text(
            'Distribuie CV',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Set the text color
            ),
          ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}