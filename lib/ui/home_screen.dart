// import packages;
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:cached_network_image/cached_network_image.dart";

// import local classes

// start declaring classes\
class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// local class should inherit from the parent stateful class

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      child: SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CachedNetworkImage(
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl: "https://picsum.photos/250?image=9"),
            Padding(padding: EdgeInsets.all(10.0)),
            Text(" Carousel Headlines"),
          ],
        ),
      ),
    );
  }
}
