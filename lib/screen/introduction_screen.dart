import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Chose England over Man Utd',
      body: 'New England manager Thomas Tuchel has lifted the lid on links to the Manchester United job .',
      // title: 'First Page',
      // body: 'Description',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // primary: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w900),),
        ),
      ),
      image: Center(
        child: Image.asset('assets/images/thomas.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Young star or world’s best',
      body: 'Lamine Yamal has been dubbed as the most talented player in the world by former Barcelona and Spain midfielder',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(  
            // primary: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Why to wait!",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w900),),
        ),
      ),
      image: Center(
        child: Image.asset('assets/images/lamine.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Liverpool v Chelsea',
      body: 'Liverpool and Chelsea are preparing to face each other in a crunch Premier League game at Anfield on Sunday.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Start",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w900),),
        ),
      ),
      image: Center(
        child: Image.asset('assets/images/livvschel.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FOOTBALL NEWS',style: TextStyle(fontWeight: FontWeight.w900),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Color.fromARGB(255, 195, 254, 140),
            activeSize: Size.square(20),
            activeColor: Color.fromARGB(255, 0, 105, 0),
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w900),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.w900),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
   final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}

// เก็บข้อมูล Key-value ลงในเครื่องแบบถาวรด้วย Shared Preferences
