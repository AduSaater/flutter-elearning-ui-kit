import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/LessonsModelClass.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';

import '../SDUtils/SDStyle.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> with SingleTickerProviderStateMixin{
  List<LessonsModel> lessonAvailable = [
    LessonsModel (
      image: 'images/smartDeck/images/js.jpg',
      title: 'Javascript',
      backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
    ),
    LessonsModel(
      image: 'images/smartDeck/images/flutter.png',
      title: 'Flutter',

      backgroundImages: 'https://us.123rf.com/450wm/9dreamstudio/9dreamstudio1803/9dreamstudio180300671/96741197-work-desk-of-modern-composer-music-notes-near-headphones-on-dark-wooden-background-top-view-.jpg?ver=6',
    ),
    LessonsModel (
      image: 'images/smartDeck/images/sdcomputer.png',
      title: 'Computer',

      backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
    ),
    LessonsModel (
      image: 'images/smartDeck/images/php.png',
      title: 'PHP',
      backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
    ),
    LessonsModel (
      image: 'images/smartDeck/images/python.jpg',
      title: 'Python',

      backgroundImages: 'https://us.123rf.com/450wm/9dreamstudio/9dreamstudio1803/9dreamstudio180300671/96741197-work-desk-of-modern-composer-music-notes-near-headphones-on-dark-wooden-background-top-view-.jpg?ver=6',
    ),
    LessonsModel (
      image: 'images/smartDeck/images/laravel.png',
      title: 'Laravel',

      backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
    ),
    LessonsModel (
      image: 'images/smartDeck/images/node.png',
      title: 'Node JS',

      backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    changeStatusColor(sdPrimaryColor);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: sdPrimaryColor,
          title: Text("Our Courses"),
          centerTitle: true,
        ),
        body:  ListView.builder(
            padding: EdgeInsets.only(bottom: 16),
            itemCount: lessonAvailable.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                width: double.infinity,
                decoration: boxDecorations(showShadow: true),
                child: ListTile(
                  onTap: () {

                  },
                  leading: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 45,
                    width: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        placeholder: AssetImage('Loading'),
                        image: Image.asset(lessonAvailable[index].image!, height: 35, width: 20).image,
                      ),
                    ),
                  ),
                  title: Text(lessonAvailable[index].title!, style: boldTextStyle(size: 16)),


                ),
              );
            }),
      ),
    );
  }
}
