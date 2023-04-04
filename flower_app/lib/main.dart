import 'package:flower_app/landing_page/landingPage.dart';
import 'package:flower_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => DarkMode(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var mainTheme = ThemeData.light();
  var darkTheme = ThemeData.dark();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<DarkMode>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashScreen(),
      theme: themeMode.darkMode ? mainTheme : darkTheme,
    );
  }
}

class DarkMode with ChangeNotifier {
  bool darkMode = true;

  ///by default it is true
  ///made a method which will execute while switching
  changeMode() {
    darkMode = !darkMode;
    notifyListeners();

    ///notify the value or update the widget value
  }
}
