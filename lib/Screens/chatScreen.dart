import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/ChatsModel.dart';

import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/Screens/chat_page_viewscreen.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late List tabs;
  int _currentIndex = 0;

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();

    tabs = ['Personal', 'Group'];
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController!.addListener(_handleTabControllerTick);
  }

  void _handleTabControllerTick() {
    setState(() {
      _currentIndex = _tabController!.index;
    });
  }

  List<ChatsModel> personalChats = [
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Paul',
      message: 'Can you help me ?',
      time: '2:11 PM',
      pendingMessages: '8',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Anthony',
      message: 'All the best for exam',
      time: '1:11 PM',
      pendingMessages: '1',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Sita',
      message: 'it\'s cool bro',
      time: '12:11 PM',
      pendingMessages: '5',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Kelvin',
      message: 'Can you help me ?',
      time: '11:11 PM',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Bob',
      message: 'me: Okay',
      time: '10:11 PM',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Erwin',
      message: 'Can you help me ?',
      time: '9:11 PM',
    ),
  ];

  List<ChatsModel> groupChats = [
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Flutter Group',
      message: 'Can you help me ?',
      time: '2:11 PM',
      pendingMessages: '5',
    ),
    ChatsModel(
      profileImage: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fpf.png?alt=media&token=783837d2-f400-4f3c-98e6-1456b6a886d9',
      name: 'Node JS',
      message: 'Can you help me ?',
      time: '1:11 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15, left: 25),
                height: 50,
                width: size.width,
                color: sdPrimaryColor,
                child: Text('Chatroom', style: primaryTextStyle(color: Colors.white)),
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: sdPrimaryColor,
                    child: TabBar(
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      indicatorWeight: 4.0,
                      labelStyle: boldTextStyle(size: 14),
                      unselectedLabelColor: Colors.white.withOpacity(.5),
                      controller: _tabController,
                      tabs: tabs.map((e) => Tab(text: e)).toList(),
                    ),
                  ),
                  if (_currentIndex == 0)
                    ListView.builder(
                        itemCount: personalChats.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  leading: CircleAvatar(radius: 20, backgroundImage: NetworkImage(personalChats[index].profileImage!)),
                                  title: Text(personalChats[index].name!, style: boldTextStyle(size: 16, color: Colors.black.withOpacity(0.8))),
                                  subtitle: Text(personalChats[index].message!, maxLines: 1, overflow: TextOverflow.ellipsis, style: secondaryTextStyle(size: 12)),
                                  trailing: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(personalChats[index].time!, style: TextStyle(fontSize: 12)),
                                      personalChats[index].pendingMessages != null
                                          ? Container(
                                              margin: const EdgeInsets.only(top: 5.0),
                                              height: 22,
                                              width: 22,
                                              decoration: BoxDecoration(color: sdSecondaryColorRed, borderRadius: BorderRadius.all(Radius.circular(25.0))),
                                              child: Center(
                                                child: Text(personalChats[index].pendingMessages!, style: primaryTextStyle(size: 11, color: Colors.white)),
                                              ),
                                            )
                                          : SizedBox(),
                                    ],
                                  ),
                                  onTap: () {
                                    ChatPageViewScreen(
                                      name: personalChats[index].name,
                                      profileImages: personalChats[index].profileImage,
                                    ).launch(context);
                                  },
                                ),
                              )
                            ],
                          );
                        })
                  else if (_currentIndex == 1)
                    ListView.builder(
                      itemCount: groupChats.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: <Widget>[
                            Expanded(
                              flex: 10,
                              child: ListTile(
                                leading: CircleAvatar(radius: 20, backgroundImage: NetworkImage(groupChats[index].profileImage!)),
                                title: Text(groupChats[index].name!, style: boldTextStyle(size: 16, color: Colors.black.withOpacity(0.8))),
                                subtitle: Text(groupChats[index].message!, maxLines: 1, overflow: TextOverflow.ellipsis, style: secondaryTextStyle(size: 12)),
                                trailing: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(groupChats[index].time!, style: TextStyle(fontSize: 12)),
                                    groupChats[index].pendingMessages != null
                                        ? Container(
                                            margin: const EdgeInsets.only(top: 5.0),
                                            height: 22,
                                            width: 22,
                                            decoration: BoxDecoration(
                                              color: sdSecondaryColorRed,
                                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                            ),
                                            child: Center(
                                              child: Text(groupChats[index].pendingMessages!, style: primaryTextStyle(size: 11, color: Colors.white)),
                                            ),
                                          )
                                        : SizedBox(),
                                  ],
                                ),
                                onTap: () {
                                  ChatPageViewScreen(
                                    name: groupChats[index].name,
                                    profileImages: groupChats[index].profileImage,
                                  ).launch(context);
                                },
                              ),
                            )
                          ],
                        );
                      },
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
