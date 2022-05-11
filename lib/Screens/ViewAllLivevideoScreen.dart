import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/ModelClass/AllVideoModel.dart';
import 'package:smartdeck/ModelClass/LiveVideoModel.dart';
import 'package:smartdeck/ModelClass/NewUploadedModel.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
class ViewAllLiveVideoScreen extends StatefulWidget {
  @override
  _ViewAllLiveVideoScreenState createState() => _ViewAllLiveVideoScreenState();
}

class _ViewAllLiveVideoScreenState extends State<ViewAllLiveVideoScreen> with SingleTickerProviderStateMixin {

  List<AllVideoModel> allVideo = [
    AllVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fapi.jpg?alt=media&token=001c2d45-fa5c-4b53-8572-f45abd5ef513',
      title: 'API',
      message: 'Learn how to use Flutter and Restful Api..',
      status: 'START NOW',
    ),
    AllVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Ffb.png?alt=media&token=8902b5e2-abe1-4e29-8801-934e0d5c3251',
      title: 'Firebase',
      message: 'Learn how to use Firebase and Flutter',
      status: 'START NOW',
    ),
    AllVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fflutter.png?alt=media&token=d3df2fdd-80d4-4647-b15d-90b68e7d1ebb',
      title: 'Flutter',
      message: 'Learn how to create iOS and Android apps.',
      status: 'START NOW',
    ),
       AllVideoModel(

        image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fphp.png?alt=media&token=5873a9fa-df44-44a5-bedd-7a0577feb63b',
        title: 'PHP',
        message: 'Learn PHP',
      status: 'START NOW',
    ),

    AllVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Flaravel.png?alt=media&token=095bbff8-3b3b-4149-a009-b9916dc81924',
      title: 'Laravel',
      message: 'Learn Laravel, PHP Framework',
      status: 'START NOW',
    ),

  ];

  List<LiveVideoModel> liveVideo = [
    LiveVideoModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Fphp.png?alt=media&token=5873a9fa-df44-44a5-bedd-7a0577feb63b',
      title: 'PHP',
      message: 'Learn PHP',
      status: 'JOIN',
    ),

  ];
  List<NewUploadedModel> newVideo = [
    NewUploadedModel(
      image: 'https://firebasestorage.googleapis.com/v0/b/zoomclone-2c391.appspot.com/o/images%2Flaravel.png?alt=media&token=095bbff8-3b3b-4149-a009-b9916dc81924',
      title: 'Laravel',
      message: 'Learn Laravel, PHP Framework',
      status: 'VIEW',
    ),

  ];
  TabController? _tabController;
  late List tabs;
  int _currentIndex = 0;

  void initState() {
    super.initState();

    tabs = ['All Video', 'Live', 'New Uploaded'];
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
Widget lList(LiveVideoModel lLiveVideo){
  return Container(
    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
    decoration: boxDecorations(showShadow: true),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 130,
          width: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            image: DecorationImage(image: NetworkImage(lLiveVideo.image!), fit: BoxFit.fill),
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
                  Text(lLiveVideo.title!, style: boldTextStyle(size: 16)),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  lLiveVideo.message!,
                  style: primaryTextStyle(size: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              FittedBox(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: boxDecorations(bgColor: sdSecondaryColorRed, radius: 4),
                  padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                  child: Center(
                    child: Text(lLiveVideo.status!, style: secondaryTextStyle(size: 8, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),

        )
      ],
    ),

  );
}
    Widget aList( AllVideoModel aLiveVideo) {
      return Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: boxDecorations(showShadow: true),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                      image: DecorationImage(image: NetworkImage(aLiveVideo.image!), fit: BoxFit.fill),
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
                              Text(aLiveVideo.title!, style: boldTextStyle(size: 16)),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text(
                              aLiveVideo.message!,
                              style: primaryTextStyle(size: 14),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          FittedBox(
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              decoration: boxDecorations(bgColor: sdSecondaryColorRed, radius: 4),
                              padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                              child: Center(
                                child: Text(aLiveVideo.status!, style: secondaryTextStyle(size: 8, color: Colors.white)),
                              ),
                            ),
                          )
                        ],
                      ),

                  )
                ],
              ),

      );
    }

Widget nList( NewUploadedModel nLiveVideo) {
  return Container(
    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
    decoration: boxDecorations(showShadow: true),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 130,
          width: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            image: DecorationImage(image: NetworkImage(nLiveVideo.image!), fit: BoxFit.fill),
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
                  Text(nLiveVideo.title!, style: boldTextStyle(size: 16)),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  nLiveVideo.message!,
                  style: primaryTextStyle(size: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              FittedBox(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: boxDecorations(bgColor: sdSecondaryColorRed, radius: 4),
                  padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                  child: Center(
                    child: Text(nLiveVideo.status!, style: secondaryTextStyle(size: 8, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),

        )
      ],
    ),

  );
}
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
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
          backgroundColor: sdPrimaryColor,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Stack(
          children: [
            Container(color: sdPrimaryColor, height: MediaQuery.of(context).size.width * 0.5),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    child: Text('Video Learning', style: boldTextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicatorWeight: 4.0,
                      labelColor: Colors.white,
                      labelStyle: boldTextStyle(size: 14),
                      unselectedLabelColor: Colors.white.withOpacity(.5),
                      controller: _tabController,
                      tabs: tabs.map((e) => Tab(text: e)).toList(),
                    ),
                  ),
                  if (_currentIndex == 0)
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: allVideo.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return aList(allVideo[index]);
                      },
                    ),
                  if (_currentIndex == 1)
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: liveVideo.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return lList(liveVideo[index]);
                      },
                    ),
                  if (_currentIndex == 2)
                       ListView.builder(
                         physics: NeverScrollableScrollPhysics(),
                         scrollDirection: Axis.vertical,
                         itemCount: newVideo.length,
                         shrinkWrap: true,
                         itemBuilder: (BuildContext context, int index) {
                           return nList(newVideo[index]);
                  },
               ),
                ],
              ),

          ],
        ),
      ),
      )
    );
  }
}
