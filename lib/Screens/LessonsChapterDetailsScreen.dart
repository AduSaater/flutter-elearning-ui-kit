import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LessonsDetScreen extends StatefulWidget {
  String? name;
  String? totalChapter;
  String? backgroundImages;

  LessonsDetScreen({this.name, this.totalChapter, this.backgroundImages});

  @override
  _LessonsDetScreenState createState() => _LessonsDetScreenState();
}

class _LessonsDetScreenState extends State<LessonsDetScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
