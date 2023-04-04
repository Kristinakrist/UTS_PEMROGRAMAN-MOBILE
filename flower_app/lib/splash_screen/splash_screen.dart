import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flower_app/color/color.dart';
import 'package:flower_app/landing_page/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.only(top: 50),
            child: Image(
              image: AssetImage("assets/logo.png"),
            ),
          ),
          Container(
            child: Text(
              'Welcome !',
              style: TextStyle(
                fontFamily: 'Atma',
                fontSize: 30,
                color: Colors.pink.shade300,
              ),
            ),
          ),
          Text(
            "The Best Looking Flower",
            style: TextStyle(
                fontFamily: 'Atma',
                fontWeight: FontWeight.w600,
                wordSpacing: 2.0,
                fontSize: 15,
                color: Color.fromARGB(255, 237, 123, 107)),
          ),
        ],
      ),
      splashIconSize: 700,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      backgroundColor: background,
      nextScreen: const landingPage(),
    );
  }
}
