import "dart:core";
import "package:flutter/cupertino.dart";
import 'package:riverpod/riverpod.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: true, child: Text("Events Section"));
  }
}
