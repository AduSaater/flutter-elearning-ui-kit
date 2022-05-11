import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/Screens/WalkThroughScreen.dart';
class SplashScreen extends StatefulWidget {
  static String tag = '/SDSplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationPage() {
    finish(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> WalkThroughScreen ()));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF076ACF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset('images/smartDeck/images/sdlogo.png', height: 105),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text("eLearning", style: secondaryTextStyle(size: 25, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
