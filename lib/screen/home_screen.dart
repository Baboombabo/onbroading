import 'package:flutter/material.dart';

// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// flutter pub add introduction_screen
// $ flutter pub add shared_preferences

// dependencies:
// introduction_screen: ^3.1.11
// shared_preferences: ^2.2.1

// flutter pub get

class HomeScreen extends StatelessWidget {
  const HomeScreen
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to My Football News page', style: TextStyle(fontSize: 25),),
      ),
    );
  }
}

// Source:https://www.youtube.com/watch?v=uia0EbMU1xs&t=18s