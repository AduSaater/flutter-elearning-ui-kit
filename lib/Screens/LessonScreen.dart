import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
class CategoryLesson extends StatefulWidget {
  String? image;
  String? name;
  String? backgroundImage;
  CategoryLesson({this.name, this.image, this.backgroundImage});
  @override
  _CategoryLessonState createState() => _CategoryLessonState();
}

class _CategoryLessonState extends State<CategoryLesson> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name!),
        backgroundColor: sdPrimaryColor,
      ),
      body: ListView(
        children: [
      Container(
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
              image: Image.asset(widget.image!, height: 35, width: 20).image,
            ),
          ),
        ),
        title: Text(widget.name!, style: boldTextStyle(size: 16)),


      ),
    ),
        ],
      ),

    );
  }
}
