import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/Screens/DashboardScreen.dart';
import 'package:smartdeck/Screens/LeaderBoardScreen.dart';
import 'package:smartdeck/Screens/ProfileScreen.dart';
import 'package:smartdeck/Screens/ScoreBoardScreen.dart';
import 'package:smartdeck/Screens/chatScreen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    changeStatusColor(sdAppBackground);
    final tab = [
      SDDashboard(context),
      ExamCompletionBoardScreen(),
      SDLeaderboardScreen(context, size),
      ChatScreen(),
      PRofileScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: tab[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: sdShadowColor, spreadRadius: 0, blurRadius: 2),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdhome.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdhome.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdexamcard.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdexamcard.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdleaderboard.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdleaderboard.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Stack(
                    children: <Widget>[
                      Image.asset('images/smartDeck/images/sdchats.png', height: 28, width: 28, color: sdIconColor),
                      Positioned(
                        top: -2,
                        right: -6,
                        child: CircleAvatar(radius: 3, backgroundColor: sdSecondaryColorRed),
                      )
                    ],
                  ),
                  activeIcon: Stack(
                    children: <Widget>[
                      Image.asset('images/smartDeck/images/sdchats.png', height: 28, width: 28, color: sdPrimaryColor),
                      Positioned(
                        top: -2,
                        right: -6,
                        child: CircleAvatar(radius: 3, backgroundColor: sdSecondaryColorRed),
                      )
                    ],
                  ),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: CachedNetworkImage(
                        placeholder: placeholderWidgetFn() as Widget Function(BuildContext, String)?,
                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
                        fit: BoxFit.cover,
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  activeIcon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: sdPrimaryColor, width: 2)),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  label: 'a',
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
