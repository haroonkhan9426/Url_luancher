import 'package:flutter/material.dart';
import 'package:url_launcher_app/home-screen.dart';
import 'package:url_launcher_app/splash-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

