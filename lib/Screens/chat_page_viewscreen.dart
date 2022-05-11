import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatPageViewScreen extends StatefulWidget {
  String? name;
  String? profileImages;

  ChatPageViewScreen({this.name, this.profileImages});

  @override
  _ChatPageViewScreenState createState() => _ChatPageViewScreenState();
}

class _ChatPageViewScreenState extends State<ChatPageViewScreen> {
  @override
  void dispose() {
    super.dispose();
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
