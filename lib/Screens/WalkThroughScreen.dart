import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/Screens/LoginScreen.dart';

class WalkThroughScreen extends StatefulWidget {
  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  bool? isActive;
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  List<Widget> buildDotIndicator() {
    List<Widget> list = [];
    for (int i = 0; i <= 2; i++) {
      list.add(i == pageChanged ? sDDotIndicator(isActive: true) : sDDotIndicator(isActive: false));
    }

    return list;
  }

  Widget sDDotIndicator({required bool isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 8.0 : 6.0,
      width: isActive ? 8.0 : 6.0,
      decoration: BoxDecoration(color: isActive ? sdPrimaryColor : Color(0xFF7E869B), borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.height * 0.7,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      pageChanged = index;
                    });
                  },
                  controller: pageController,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                          child: Image(
                            image: AssetImage('images/smartDeck/images/sdclip.png'),
                            height: size.height * 0.3,
                            width: size.width,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 4),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Learn without limits', textAlign: TextAlign.justify, style: boldTextStyle(size: 25)),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                          child: Image(
                            image: AssetImage('images/smartDeck/images/sdreport.png'),
                            height: size.height * 0.3,
                            width: size.width,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 4),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Train Yourself', textAlign: TextAlign.justify, style: boldTextStyle(size: 25)),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Learn the lastest technologies', textAlign: TextAlign.justify, style: secondaryTextStyle(size: 16)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
                          child: Image(
                            image: AssetImage('images/smartDeck/images/sdclip.png'),
                            height: size.height * 0.3,
                            width: size.width,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 4),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Choose your interest', textAlign: TextAlign.justify, style: boldTextStyle(size: 25)),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Learn at your own pace, with lifetime.', textAlign: TextAlign.justify, style: secondaryTextStyle(size: 16)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: buildDotIndicator()),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    pageChanged != 2
                        ? InkWell(
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.arrow_forward, color: Colors.white),
                              backgroundColor: sdPrimaryColor,
                            ),
                            onTap: () {
                              pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
                            },
                          )
                        : Container(
                            margin: EdgeInsets.only(bottom: 0, left: 20, right: 20),
                            width: size.width,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: sdPrimaryColor,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                elevation: 1,
                              ),
                              onPressed: () {
                                finish(context);
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));

                              },
                              child: Text(
                                "GET STARTED",
                                textAlign: TextAlign.center,
                                style: boldTextStyle(size: 16, color: Colors.white, letterSpacing: 2),
                              ),
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
