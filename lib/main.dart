import 'dart:core';
import "package:flutter/cupertino.dart";

// import local classes (screens )
import "package:info_dem/ui/splash_screen.dart";
import 'package:info_dem/ui/home_screen.dart';

void main() => runApp(StartScreen());

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(
          primaryColor: CupertinoColors.activeBlue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "/home": (context) => HomeScreen(),
          //"": (context) =>
        });
  }
}
