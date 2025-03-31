import 'package:flutter/material.dart';

class StatsBar extends StatelessWidget {
  final String totalEarnings;
  final String jobsCompleted;

  const StatsBar({
    required this.totalEarnings,
    required this.jobsCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Add this line
                children: [
                  Text(
                    '\$ $totalEarnings',
                    style: TextStyle(fontSize: 26),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Total castigat',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              thickness: 2,
              color: Colors.black,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Add this line
                children: [
                  Text(
                    jobsCompleted,
                    style: TextStyle(fontSize: 26),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Ore lucrate',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
