import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_two/page/home.dart';
import 'package:onboarding_two/page/home.dart';
import 'package:onboarding_two/widget/button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.deepPurple[100],
          pages: [
            PageViewModel(
              title: 'Are you ready to count?',
              body: '',
              image: buildImage('assets/images/welcome.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'An accountant is basically an organizer',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Start',
                onClicked: () => Home(context),
              ),
              image: buildImage('assets/images/count.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Start', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => Home(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => Home(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          color: Colors.purple,
          skipFlex: 0,
          nextFlex: 0,
        ),
      );
  void Home(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
//   void initState() {
//     super.initState();
//     print("monica2");
//     checkSession();
//   }

//   void checkSession() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();

// // Set
//     //prefs.setString('session', 'loquesea');

// // Get
//     String? token = prefs.getString('session');
//     print(token);

// // Remove
//     //prefs.remove('apiToken');
//   }

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          width: 350,
        ),
      );
  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 15),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(20),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.deepPurple,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
}
