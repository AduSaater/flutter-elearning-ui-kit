import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/Screens/ExamDetailsScreen.dart';

// ignore: must_be_immutable
class SDExamScreen extends StatefulWidget {
  String? name;
  String? image;
  Color? startColor;
  Color? endColor;
  SDExamScreen([this.name, this.image, this.startColor, this.endColor]);
  @override
  _SDExamScreenState createState() => _SDExamScreenState();
}
class _SDExamScreenState extends State<SDExamScreen> {
  late var text;

  @override
  // ignore: must_call_super
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    changeStatusColor(widget.startColor!);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.startColor!, widget.endColor!],
              ),
            ),
            height: size.height,
            width: size.width,
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: CloseButton(color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 16),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(widget.image!, height: 60, width: 60),
                    radius: 40,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    widget.name!,
                    style: boldTextStyle(color: Colors.white, letterSpacing: 0.2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '40 questions',
                        style: secondaryTextStyle(size: 14, color: Colors.white.withOpacity(0.5)),
                      ),
                      SizedBox(width: 10),
                      Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.5)), height: 4, width: 4),
                      SizedBox(width: 10),
                      Text(
                        '15 minutes',
                        textAlign: TextAlign.justify,
                        style: secondaryTextStyle(size: 14, color: Colors.white.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                 Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'Free Practice Test Instructions:\nChoose your answer to the question and click Continue to see how you did. Then click Next Question to answer the next question. When you have completed the free practice test, click View Results to see your results. Good luck!',
                        style: secondaryTextStyle(size: 14, color: Colors.white.withOpacity(0.5)),
                      ),
                    ),

                SizedBox(height: 10,),
             InkWell(
                    onTap: () {
                      SDExamDetailsScreen().launch(context);
                    },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Start Test', style: boldTextStyle(size: 16, color: Colors.white)),
                        ),
                      ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
