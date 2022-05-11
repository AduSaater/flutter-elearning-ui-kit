import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/ScoreboardAvailableModel.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
import 'package:smartdeck/SDUtils/percent_indicator/circular_percent_indicator.dart';
import 'package:smartdeck/Screens/LessonsChapterDetailsScreen.dart';

class ExamCompletionBoardScreen extends StatefulWidget {
  @override
  _ExamCompletionBoardScreenState createState() => _ExamCompletionBoardScreenState();
}

class _ExamCompletionBoardScreenState extends State<ExamCompletionBoardScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late List tabs;
  int _currentIndex = 0;

  List<ScoreboardModel> scoreboardAvailable = [
    ScoreboardModel(
      image: 'images/smartDeck/images/js.jpg',
      title: 'Javascript',
      subtitle: 'Ongoing',
      status: 0.8,
      backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/flutter.png',
      title: 'Flutter',
      subtitle: 'Ongoing',
      status: 0.5,
      backgroundImages: 'https://us.123rf.com/450wm/9dreamstudio/9dreamstudio1803/9dreamstudio180300671/96741197-work-desk-of-modern-composer-music-notes-near-headphones-on-dark-wooden-background-top-view-.jpg?ver=6',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/sdcomputer.png',
      title: 'Computer',
      subtitle: 'Ongoing',
      status: 0.2,
      backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/php.png',
      title: 'PHP',
      subtitle: 'Ongoing',
      status: 0.8,
      backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/python.jpg',
      title: 'Python',
      subtitle: 'Ongoing',
      status: 0.5,
      backgroundImages: 'https://us.123rf.com/450wm/9dreamstudio/9dreamstudio1803/9dreamstudio180300671/96741197-work-desk-of-modern-composer-music-notes-near-headphones-on-dark-wooden-background-top-view-.jpg?ver=6',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/laravel.png',
      title: 'Laravel',
      subtitle: 'Ongoing',
      status: 0.2,
      backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
    ),
  ];

  List<ScoreboardModel> scoreboardPassed = [
    ScoreboardModel(
      image: 'images/smartDeck/images/python.jpg',
      title: 'Python',
      subtitle: '22/04/2022 at 2:20 PM',
      status: 1.0,
      backgroundImages: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSePqEkOx6meh5aP5W0wRjvqCwDMFrpKyjFQA&usqp=CAU',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/flutter.png',
      title: 'Flutter',
      subtitle: '02/5/2022 at 2:00 PM',
      status: 1.0,
      backgroundImages: 'https://i.pinimg.com/originals/30/45/9c/30459c328f5f535509d3131f773ab10f.jpg',
    ),
    ScoreboardModel(
      image: 'images/smartDeck/images/node.png',
      title: 'Node JS',
      subtitle: '05/09/2022 at 2:20 PM',
      status: 1.0,
      backgroundImages: 'https://d2c7ipcroan06u.cloudfront.net/wp-content/uploads/2019/07/mathematics-696x364.jpg',
    ),
  ];

  void initState() {
    super.initState();

    tabs = ['Ongoing', 'Finished'];
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController!.addListener(_handleTabControllerTick);
  }

  void _handleTabControllerTick() {
    setState(() {
      _currentIndex = _tabController!.index;
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(sdPrimaryColor);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              color: sdPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    child: Text('Your Learning', style: boldTextStyle(color: Colors.white)),
                  ),

                  SizedBox(height: 10),
                  TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 4.0,
                    labelColor: Colors.white,
                    labelStyle: boldTextStyle(size: 14),
                    unselectedLabelColor: Colors.white.withOpacity(.5),
                    controller: _tabController,
                    tabs: tabs.map((e) => Tab(text: e)).toList(),
                  ),
                ],
              ),
            ),
            if (_currentIndex == 0)
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 16),
                    itemCount: scoreboardAvailable.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                        width: double.infinity,
                        decoration: boxDecorations(showShadow: true),
                        child: ListTile(
                          onTap: () {
                            LessonsDetScreen(name: scoreboardAvailable[index].title, backgroundImages: scoreboardAvailable[index].backgroundImages).launch(context);
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
                                image: Image.asset(scoreboardAvailable[index].image!, height: 35, width: 20).image,
                              ),
                            ),
                          ),
                          title: Text(scoreboardAvailable[index].title!, style: boldTextStyle(size: 16)),
                          subtitle: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(scoreboardAvailable[index].subtitle!, style: secondaryTextStyle(size: 10)),
                          ),
                          trailing: CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 3.0,
                            animation: true,
                            percent: scoreboardAvailable[index].status!.toDouble(),
                            backgroundColor: sdViewColor,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: sdPrimaryColor,
                          ),
                        ),
                      );
                    }),
              )
            else if (_currentIndex == 1)
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 16),
                    itemCount: scoreboardPassed.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                        width: double.infinity,
                        decoration: boxDecorations(showShadow: true),
                        child: ListTile(
                          onTap: () {
                            LessonsDetScreen(name: scoreboardPassed[index].title, backgroundImages: scoreboardAvailable[index].backgroundImages).launch(context);
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
                                image: Image.asset(scoreboardPassed[index].image!, height: 35, width: 20).image,
                              ),
                            ),
                          ),
                          title: Text(scoreboardPassed[index].title!, style: boldTextStyle(size: 16)),
                          subtitle: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(scoreboardPassed[index].subtitle!, style: secondaryTextStyle(size: 10)),
                          ),
                          trailing: CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 3.0,
                            animation: true,
                            percent: scoreboardPassed[index].status!.toDouble(),
                            backgroundColor: sdViewColor,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: sdPrimaryColor,
                          ),
                        ),
                      );
                    }),
              )
          ],
        ),
      ),
    );
  }
}
