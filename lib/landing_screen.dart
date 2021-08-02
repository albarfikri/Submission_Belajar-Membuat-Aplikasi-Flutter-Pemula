import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Catalogue', style:TextStyle(color: Colors.white)),
      )
    );
  }
}
