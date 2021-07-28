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
    return CupertinoTabScaffold(
        backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book), label: "Books")
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return CupertinoPageScaffold(
                navigationBar:
                    CupertinoNavigationBar(middle: Text("Index of $index")),
                child: SafeArea(
                  child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [Text("Something Nice about Scaffold")],
                      )),
                ));
          });
        });

    // return CupertinoPageScaffold(
    //   backgroundColor: CupertinoColors.lightBackgroundGray,
    //   child: SafeArea(
    //     top: true,
    //     left: true,
    //     right: true,
    //     bottom: true,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: <Widget>[
    //         CachedNetworkImage(
    //             placeholder: (context, url) => CircularProgressIndicator(),
    //             imageUrl: "https://picsum.photos/250?image=9"),
    //         Padding(padding: EdgeInsets.all(10.0)),
    //         Text(" Carousel Headlines"),
    //       ],
    //     ),
    //   ),
    // );
  }
}
