import 'package:flutter/material.dart';
import 'package:onboarding_two/page/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Contador';
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: OnBoardingPage(),
      );
}
