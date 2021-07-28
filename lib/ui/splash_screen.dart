import 'dart:async';
import 'dart:ui';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:info_dem/ui/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // call the super parent class
  @override
  void initState() {
    super.initState();

    startProcess();
  }

  // timer method to move splash screen to the homepage
  startProcess() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, navigate);
  }

  // navigation method to the  next page
  navigate() {
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
          backgroundColor: Color.fromRGBO(222, 224, 222, 0.9),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 50.0,
                        child: Icon(Icons.book_rounded,
                            size: 50.0, color: Colors.white)),
                    Text("INFO DEM",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50.0)),
                    Padding(padding: EdgeInsets.only(top: 60.0))
                  ]),
            ),
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 105.0)),
                  Text("...know the right info"),
                ])),
          ])),
    );
  }
}

// responsible for disposing of state. State can not be remounted
@override
@mustCallSuper
void dispose() {
  return dispose();
}
