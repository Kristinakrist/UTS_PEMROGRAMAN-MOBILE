import 'package:flower_app/color/color.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({
    super.key,
  });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kris.jpg'),
                radius: 80,
              ),
            ),
            Text(
              "Kristina",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: "LeJourSerif",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "I am a software engineer with over 8 years’ experience working on complex software development initiatives. I’m passionate about software development and I’m looking forward to getting to work on new projects in the near future.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
