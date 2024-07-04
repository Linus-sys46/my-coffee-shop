import 'package:brewvana/screens/dashboard_app.dart';
import 'package:brewvana/screens/orders.dart';
import 'package:brewvana/screens/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(
        // ),
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
