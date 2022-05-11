import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Widget mPopup() => PopupMenuButton(
          itemBuilder: (context) {
            List<PopupMenuEntry<Object>> list = [];
            list.add(
              PopupMenuItem(child: Text("Mark as read"), value: 1),
            );
            list.add(
              PopupMenuItem(child: Text("Mute Notification"), value: 1),
            );
            list.add(
              PopupMenuItem(child: GestureDetector(onTap: () {}, child: Text("Settings")), value: 1),
            );
            return list;
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            padding: EdgeInsets.all(6),
            child: Icon(Icons.more_vert, color: sdTextPrimaryColor),
          ),
        );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              finish(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('Notification', style: boldTextStyle(size: 20)),
          actions: <Widget>[mPopup()],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Container(),
      ),
    );
  }
}
