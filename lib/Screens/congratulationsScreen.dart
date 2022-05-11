import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';

import 'HomePageScreen.dart';

class CongratulationsScreen extends StatefulWidget {
  @override
  _CongratulationsScreenState createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              padding: EdgeInsets.only(left: 26, right: 26),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('images/smartDeck/images/sdtrophy.png'), height: size.height * 0.18, fit: BoxFit.cover),
                  SizedBox(height: 20),
                  Text("Congratulations!", style: boldTextStyle(size: 20)),
                  SizedBox(height: 16),
                  Text("You have successfully completed the \ngeography module & certificate", textAlign: TextAlign.center, style: secondaryTextStyle()),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: SDButton(
                textContent: "CLOSE",
                onPressed: () {
                  HomePageScreen().launch(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
