import "dart:core";
import "package:flutter/cupertino.dart";
import 'package:riverpod/riverpod.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search"));
  }
}
