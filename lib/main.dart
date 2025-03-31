import 'package:flutter/material.dart';
import 'package:project_s_frontend/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project S',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(),
      debugShowCheckedModeBanner: false, // Add this line to remove the debug banner
    );
  }
}
