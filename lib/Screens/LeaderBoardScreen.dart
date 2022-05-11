import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/LeaderboardModel.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
import 'package:smartdeck/Screens/LeaderInfoScreen.dart';


List<LeaderBoardModel> students = [
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Karnia',
    message: 'Excellent work',
    score: 100,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Kamaludin ',
    message: 'Good work',
    score: 97,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Mark',
    message: 'Nice work',
    score: 96,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Jeck',
    message: 'Nice work',
    score: 92,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'John ',
    message: 'Nice',
    score: 50,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Paul',
    message: 'Good',
    score: 97,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Smith',
    message: 'Nice work',
    score: 96,
  ),
  LeaderBoardModel(
    image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
    name: 'Lee',
    message: 'Nice work',
    score: 92,
  ),
];

// ignore: non_constant_identifier_names
Widget SDLeaderboardScreen([BuildContext? context, Size? size]) {
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 25, left: 16, bottom: 16),
        width: size!.width,
        color: sdPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tutors',
              style: boldTextStyle(size: 18, color: Colors.white, letterSpacing: 0.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                'Your Chat With our Professionals',
                style: secondaryTextStyle(
                  size: 12,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 16),
          scrollDirection: Axis.vertical,
          itemCount: students.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                LeaderInfoScreen().launch(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                width: size.width,
                decoration: boxDecorations(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: (index + 1) == 1
                          ? Color(0xFFFFD700)
                          : (index + 1) == 2
                              ? Colors.grey.withOpacity(0.5)
                              : (index + 1) == 3
                                  ? Colors.red.withOpacity(0.5)
                                  : Colors.transparent,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: (index + 1) == 1
                            ? Color(0xFFD4AF37)
                            : (index + 1) == 2
                                ? Colors.grey.withOpacity(0.5)
                                : (index + 1) == 3
                                    ? Colors.red.withOpacity(0.5)
                                    : Colors.transparent,
                        child: Text(
                          (index + 1).toString(),
                          style: secondaryTextStyle(size: 14, color: (index + 1) == 1 || (index + 1) == 2 || (index + 1) == 3 ? Colors.white : Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      height: 45,
                      width: 45,
                      child: ClipRRect(borderRadius: BorderRadius.circular(40), child: commonCacheImageWidget(students[index].image!, height: 35, width: 10)),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(students[index].name!, style: boldTextStyle(size: 16)),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(students[index].message!, style: secondaryTextStyle(size: 12)),
                          ),
                        ],
                      ),
                    ),
                    Text(students[index].score.toString(), style: boldTextStyle())
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
