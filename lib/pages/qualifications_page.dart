import 'package:flutter/material.dart';
import 'package:project_s_frontend/components/bottom_navbar.dart';


class QualificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locuri disponibile'),
      ),
      body: Center(
        child: Text(
          'Pg locuri munca',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        key: Key('bottom_navbar_key'),
        currentPage: 'qualifications',
      ),
    );
  }
}