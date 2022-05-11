import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: Container(),
      ),
    );
  }
}
