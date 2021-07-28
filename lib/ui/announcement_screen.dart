import "dart:core";
import "package:flutter/cupertino.dart";
import 'package:riverpod/riverpod.dart';

class AnnouncementScreen extends StatefulWidget {
  @override
  _AnnouncementScreenState createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Event"));
  }
}
