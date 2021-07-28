import 'dart:core';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Page'));
  }
}
