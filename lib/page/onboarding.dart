import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.deepPurple[100],
          pages: [
            PageViewModel(
              title: 'monicaaaaa',
              body: 'borrallas',
              image: buildImage('assets/raccoon.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'monicaaaaa',
              image: buildImage('assets/raccoon.png'),
              body: 'borrallas',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'monicaaaaa',
              image: buildImage('assets/raccoon.png'),
              body: 'borrallas',
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Hello'),
          onDone: () {},
        ),
      );
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
}
