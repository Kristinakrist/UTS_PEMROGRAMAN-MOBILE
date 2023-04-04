import 'package:flower_app/color/color.dart';
import 'package:flower_app/landing_page/landingPage.dart';
import 'package:flower_app/pageDrawer/Theme.dart';
import 'package:flower_app/pageDrawer/tentangAplikasi.dart';
import 'package:flower_app/page_buttom/profile.dart';
import 'package:flower_app/page_buttom/utama.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<BottomNavigationBarItem> navbarItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Utama"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _index = 0;
  final List<Widget> _body = [const utama(), const profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: background,
          title: Text(
            'Halaman Utama',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: Image.asset('assets/logo.png'),
              iconSize: 50,
            );
          })),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          color: second,
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/backgroundDrawer.jpg'),
                    ),
                  ),
                  // decoration: BoxDecoration(color: Colors.grey.shade500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/foto1.png'),
                        radius: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kristina',
                            style: TextStyle(
                              backgroundColor: background,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '2009106108',
                            style: TextStyle(
                              backgroundColor: background,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text("Profil Saya"),
                subtitle: const Text("Account pengguna aplikasi"),
                tileColor: const Color.fromARGB(255, 246, 246, 233),
                onTap: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                  setState(() {
                    _index = 1;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_applications),
                title: const Text("Tentang Aplikasi"),
                subtitle: const Text("Spesifikasi Aplikasi"),
                tileColor: const Color.fromARGB(255, 246, 246, 233),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return TentangAplikasi(
                        title: 'Tentang Aplikasi',
                      );
                    }),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.opacity),
                title: const Text("Mode Gelap"),
                subtitle: const Text("Aktif atau tidak"),
                tileColor: const Color.fromARGB(255, 246, 246, 233),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const Settings();
                    }),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                subtitle: const Text("Keluar dari aplikasi"),
                tileColor: const Color.fromARGB(255, 246, 246, 233),
                onTap: () {
                  // auth.signOut();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => landingPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: _body[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: background,
        currentIndex: _index,
        selectedItemColor: second,
        unselectedItemColor: Colors.grey,
        items: navbarItem,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
    );
  }
}
