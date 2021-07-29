import "dart:io";
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
// import "package:cached_network_image/cached_network_image.dart";

// import local classes
import "package:info_dem/utils/default_screen.dart";
import "package:info_dem/ui/search_screen.dart";
import "package:info_dem/ui/event_screen.dart";
import "package:info_dem/ui/announcement_screen.dart";

// start declaring classes\
class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// local class should inherit from the parent stateful class

class _HomePageState extends State<HomeScreen> {
// pages involved
  final List<Widget> _pages = [
    DefaultPage(),
    SearchScreen(),
    EventScreen(),
    AnnouncementScreen()
  ];

  final List<String> _count = ["Home", "Search", "Event", "Announcement"];
  checkPlatform() {
    return Platform.isIOS ? iosHome(context, _pages, _count) : androidHome();
  }

  @override
  Widget build(BuildContext context) {
    return checkPlatform();

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

// ios page widget

Widget iosHome(context, _count, _pages) {
  return CupertinoTabScaffold(
      backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, size: 20.0), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, size: 20.0), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar, size: 20.0), label: "Event"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.speaker, size: 20.0),
              label: "Announcement")
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(builder: (BuildContext context) {
          return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                  middle: Text(_count[index]),
                  trailing: CupertinoButton(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(CupertinoIcons.person_crop_circle_fill,
                          color: Color.fromRGBO(65, 91, 155, 0.9)),
                      onPressed: () => {})),
              child: _pages[index]);
        });
      });
}

Widget androidHome() {
  return Container(child: Text('hi'));
}
