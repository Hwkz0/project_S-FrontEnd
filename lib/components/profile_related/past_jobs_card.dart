import 'package:flutter/material.dart';

class PastJobsCard extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String duration;

//TODO: idea , implement as listTile

  PastJobsCard({required this.jobTitle, required this.company, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Set crossAxisAlignment to start
      children: [
        CardRow(
        jobTitle: jobTitle,
        company: company,
        duration: duration,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            height: 20,
          ),
        ),
      ],
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  const CardRow({
    Key? key, // Add the missing key parameter
    required this.jobTitle,
    required this.company,
    required this.duration,
  }) : super(key: key);

  final String jobTitle;
  final String company;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero, // Set margin to zero
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Set borderRadius to zero
      ),
      child: ListTile(
        title: Text(
          jobTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          company,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Text(
          "$duration ore",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
