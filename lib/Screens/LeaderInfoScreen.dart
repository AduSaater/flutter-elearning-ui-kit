import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';

class LeaderInfoScreen extends StatefulWidget {
  @override
  _LeaderInfoScreenState createState() => _LeaderInfoScreenState();
}

class _LeaderInfoScreenState extends State<LeaderInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              finish(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: <Widget>[
            Padding(padding: const EdgeInsets.only(right: 16), child: Icon(Icons.favorite_border, color: Colors.white)),
          ],
          backgroundColor: sdPrimaryColor,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Scaffold(),
      ),
    );
  }
}
