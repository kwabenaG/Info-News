import 'dart:core';
import 'dart:io';
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

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
    return checkPlatform();
  }
}

//
checkPlatform() {
  return Platform.isAndroid ? android() : iOS();
}

// returns ios platform
Widget iOS() {
  return CupertinoApp(
      theme: CupertinoThemeData(
          primaryColor: CupertinoColors.activeBlue,
          scaffoldBackgroundColor: Color.fromRGBO(222, 224, 222, 0.9)),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
        //"": (context) =>
      });
}

//
Widget android() {
  return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
      });
}
