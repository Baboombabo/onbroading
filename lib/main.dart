import 'package:flutter/material.dart';
import 'screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen/home_screen.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  //show = true;
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter on Boarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: show ? IntroScreen() : const HomeScreen(),
      // home: IntroScreen(),
    );
  }
}
