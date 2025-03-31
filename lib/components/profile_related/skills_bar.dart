import 'package:flutter/material.dart';

class SkillsBar extends StatelessWidget {
  const SkillsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8), // Add padding
        child: Column(
          children: [
            SkillRow(skillName: 'Ospatar', starCount: 3),
            SkillRow(skillName: 'Barman', starCount: 5),
            SkillRow(skillName: 'Vanzator', starCount: 2),
            SkillRow(skillName: 'Operator', starCount: 4),
            SkillRow(skillName: 'Programator', starCount: 3),
          ],
        ),
      ),
    );
  }
}

class SkillRow extends StatelessWidget {
  final String skillName;
  final int starCount;

  SkillRow({required this.skillName, required this.starCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.only(left: 8, bottom: 5),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        skillName,
        style: TextStyle(fontSize: 20),
      ),
      Row(
        children: List.generate(
          5, // Generate 5 stars
          (index) => Icon(
            index < starCount
                ? Icons.star // Filled star if index is less than starCount
                : Icons.star_border, // Outlined star otherwise
          ),
        ),
      ),
    ],
  ),
);
  }
}