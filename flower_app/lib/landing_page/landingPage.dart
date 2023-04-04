import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flower_app/color/color.dart';
import 'package:flower_app/home_page/home.dart';
import 'package:flutter/material.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(image: AssetImage('assets/foto1.png'))),
                Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto2.jpeg'),
                    )),
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto3.jpg'),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Beragam Bunga untuk menemani hari harimu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Atma',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Ayo bergabung sekarang juga",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Atma',
                      // fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(image: AssetImage('assets/foto1.png'))),
                Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto2.jpeg'),
                    )),
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto3.jpg'),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Beragam Bunga untuk menemani hari harimu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Atma',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Ayo bergabung sekarang juga",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Atma',
                      // fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(image: AssetImage('assets/foto1.png'))),
                Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto2.jpeg'),
                    )),
                Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/foto3.jpg'),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Beragam Bunga untuk menemani hari harimu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Atma',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Ayo bergabung sekarang juga",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Atma',
                      // fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: background,
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 9),
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                textBaseline: TextBaseline.alphabetic,
                textDirection: TextDirection.ltr,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: _demo,
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                    ),
                  ),
                  CarouselIndicator(
                    height: 7,
                    width: 7,
                    color: Colors.brown,
                    activeColor: Colors.pinkAccent,
                    count: _demo.length,
                    index: pageIndex,
                    space: 7.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: second,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const homePage();
                    }),
                  );
                },
                child: Text(
                  "Start Free",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
