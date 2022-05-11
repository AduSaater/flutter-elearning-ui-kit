import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smartdeck/SDUtils/AppWidget.dart';
import 'package:smartdeck/SDUtils/SDColors.dart';
import 'package:smartdeck/SDUtils/SDStyle.dart';
import 'package:smartdeck/Screens/HomePageScreen.dart';
import 'package:smartdeck/Screens/LoginScreen.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    changeStatusColor(sdAppBackground);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: sdAppBackground,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('New Account', style: boldTextStyle(size: 25)),
                  SizedBox(height: 25),
                  Text('Create new account to get access to our courses by entering your mobile number and password', style: secondaryTextStyle(size: 16)),
                  SizedBox(height: 25),
                  Container(
                    width: size.width,
                    decoration: boxDecorations(showShadow: true),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                          cursorWidth: 1,
                          autocorrect: true,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: secondaryTextStyle(color: sdTextSecondaryColor.withOpacity(0.6)),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 16, bottom: 16, top: 16, right: 16),
                          ),
                        ),
                        Divider(height: 1, thickness: 1),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                obscureText: true,
                                cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                                cursorWidth: 1,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: secondaryTextStyle(color: sdTextSecondaryColor.withOpacity(0.6)),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 16, bottom: 16, top: 16, right: 16),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45),
                  SDButton(
                    textContent: "SIGN UP",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePageScreen()));
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).copyWith().size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Already have an account?', style: secondaryTextStyle()),
                TextButton(
                  onPressed: () {
                    LoginScreen().launch(context);
                  },
                  child: Text('SIGN IN', style: boldTextStyle(size: 14, color: sdPrimaryColor)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
