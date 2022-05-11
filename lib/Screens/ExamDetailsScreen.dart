import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';

class SDExamDetailsScreen extends StatefulWidget {
  @override
  _SDExamDetailsScreenState createState() => _SDExamDetailsScreenState();
}

class _SDExamDetailsScreenState extends State<SDExamDetailsScreen> {
  @override
  void initState() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 15),
            child: CloseButton(color: Colors.black),
          ),
          title: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.alarm, color: Colors.grey),
              ],
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                finish(context);
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Center(
                  child: Text('Quit Exam', style: boldTextStyle(size: 14, color: sdPrimaryColor)),
                ),
              ),
            )
          ],
        ),
//        body: PurchaseMoreScreen(),
      ),
    );
  }
}

class Question extends StatefulWidget {
  final String textContent;
  final String? question;

  Question({Key? key, required this.textContent, this.question}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 25, left: 15),
          child: Text(widget.textContent, style: secondaryTextStyle(size: 14)),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Text(widget.question!, style: primaryTextStyle(size: 16)),
        ),
      ],
    );
  }
}
