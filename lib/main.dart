import 'package:flutter/material.dart';
import 'package:submission/landing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalogue',
      theme: ThemeData(
          fontFamily: 'Roboto',
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
