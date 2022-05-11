import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/LessonsModelClass.dart';
import 'package:smartdeck/ModelClass/LiveVideoModel.dart';
import 'package:smartdeck/ModelClass/ExamCardModel.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
import 'package:smartdeck/Screens/LessonScreen.dart';
import 'package:smartdeck/Screens/ScoreBoardScreen.dart';
import 'package:smartdeck/Screens/ExamScreen.dart';
import 'package:smartdeck/Screens/all_lessons_screen.dart';
import 'ViewAllLivevideoScreen.dart';

List<LessonsModel> lessons = [
  LessonsModel(
    image: 'images/smartDeck/images/js.jpg',
    title: 'JavaScript',
    backgroundImages: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSePqEkOx6meh5aP5W0wRjvqCwDMFrpKyjFQA&usqp=CAU',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/php.png',
    title: 'PHP',
    backgroundImages: 'https://d2c7ipcroan06u.cloudfront.net/wp-content/uploads/2019/07/mathematics-696x364.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/node.png',
    title: 'Node JS',
    backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sdcomputer.png',
    title: 'Computer',
    backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/python.jpg',
    title: 'Python',
    backgroundImages: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSePqEkOx6meh5aP5W0wRjvqCwDMFrpKyjFQA&usqp=CAU',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/flutter.png',
    title: 'Flutter',
    backgroundImages: 'https://i.pinimg.com/originals/30/45/9c/30459c328f5f535509d3131f773ab10f.jpg',
  ),
];

List<LiveVideoModel> liveVideo = [
  LiveVideoModel(image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fapi.jpg?alt=media&token=001c2d45-fa5c-4b53-8572-f45abd5ef513', title: 'API', message: 'Learn Flutter and Restful API', status: 'START NOW'),
  LiveVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Ffb.png?alt=media&token=8902b5e2-abe1-4e29-8801-934e0d5c3251',
      title: 'Firebase',
      message: 'Learn Flutter and Firebase ',
      status: 'START NOW'),
  LiveVideoModel(image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fflutter.png?alt=media&token=d3df2fdd-80d4-4647-b15d-90b68e7d1ebb', title: 'Flutter', message: 'Learn how to create iOS and Android apps', status: 'START NOW'),
];

List<ExamCardModel> cards = [
  ExamCardModel(
    image: 'images/smartDeck/images/python.jpg',
    examName: 'Python daily\nTest',
    time: '15 minutes',
    icon: Icon(Icons.notifications_active, color: Colors.white54),
    startColor: Color(0xFF2889EB),
    endColor: Color(0xFF0B56CB),
  ),
  ExamCardModel(
    image: 'images/smartDeck/images/php.png',
    examName: 'PHP daily\nTest',
    time: '15 minutes',
    icon: Icon(Icons.notifications_off, color: Colors.white54),
    startColor: Color(0xFFF1AD4B),
    endColor: Color(0xFFF26340),
  ),
  ExamCardModel(
    image: 'images/smartDeck/images/flutter.png',
    examName: 'Flutter daily\nTest',
    time: '15 minutes',
    icon: Icon(Icons.notifications, color: Colors.white54),
    startColor: Color(0xFF7EA56C),
    endColor: Color(0xFF6C9258),
  )
];

// ignore: non_constant_identifier_names
Widget SDDashboard(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Text('eLearning', ),

      foregroundColor: Colors.black,
      elevation: 0.0,
    ),
    body: Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text('Hi, Jeremiah', style: boldTextStyle(size: 20)),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text('Welcome', style: secondaryTextStyle(size: 14)),
            ),
            SizedBox(height: 15),
            Container(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      SDExamScreen(cards[index].examName, cards[index].image, cards[index].startColor, cards[index].endColor).launch(context);
                    },
                    child: Container(
                      width: 180.0,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.all(10),
                      decoration: boxDecoration(
                        radius: 8,
                        spreadRadius: 1,
                        blurRadius: 4,
                        gradient: LinearGradient(colors: [cards[index].startColor!, cards[index].endColor!]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            child: Image.asset(cards[index].image!, height: 60, width: 60),
                          ),
                          SizedBox(height: 15),
                          Text(cards[index].examName!, style: secondaryTextStyle(color: Colors.white, size: 20)),
                          SizedBox(height: 15),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            Text(cards[index].time!, style: secondaryTextStyle(color: Colors.white54, size: 18)),
                            cards[index].icon!,
                          ]),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: Text('Lessons', style: boldTextStyle(size: 16))),
                  InkWell(
                    onTap: () {
                      Lessons().launch(context);
                    },
                    child: Text('SEE ALL', style: boldTextStyle(color: sdPrimaryColor, size: 14)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Text('eLearning', style: secondaryTextStyle(size: 14)),
            ),
            SizedBox(height: 5),
            Container(
              height: 150,
              child: ListView.builder(
                  padding: EdgeInsets.only(right: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: lessons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        CategoryLesson(
                          image:lessons[index].image,
                          name: lessons[index].title,
                          backgroundImage: lessons[index].backgroundImages,
                        ).launch(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Image.asset(lessons[index].image!, height: 30, width: 30),
                            ),
                            Container(margin: EdgeInsets.only(top: 10), child: Text(lessons[index].title!)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: Text('More Lessons', style: boldTextStyle(size: 16))),
                  InkWell(
                    onTap: () {
                      ViewAllLiveVideoScreen().launch(context);
                    },
                    child: Text('SEE ALL', style: boldTextStyle(color: sdPrimaryColor, size: 14)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 130,
              child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: liveVideo.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 300,
                    decoration: boxDecorations(showShadow: true),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                            image: DecorationImage(image: CachedNetworkImageProvider(liveVideo[index].image!), fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(liveVideo[index].title!, style: boldTextStyle(size: 16)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: FittedBox(
                                  child: Text(
                                    liveVideo[index].message!,
                                    style: primaryTextStyle(size: 14),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  decoration: boxDecorations(bgColor: sdSecondaryColorRed, radius: 4),
                                  padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                                  child: Center(
                                    child: Text(liveVideo[index].status!, style: secondaryTextStyle(size: 8, color: Colors.white)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ),
  );
}
