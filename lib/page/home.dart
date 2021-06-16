import 'dart:html';

import 'package:flutter/material.dart';
import 'package:onboarding_two/main.dart';
import 'package:onboarding_two/page/onboarding.dart';
import 'package:onboarding_two/widget/button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The number is: $_count',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              ButtonWidget(
                text: 'Back',
                onClicked: () => goToOnBoarding(context),
              ),
            ],
          ),
        ),
        floatingActionButton: _crearButtoms(),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
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

  Widget _crearButtoms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _count = 0;
            });
          },
          tooltip: 'Contador en 0',
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _count++;
              if (_count == 20) {
                _count = 0;
              }
            });
          },
          tooltip: 'Incrementa el contador',
        ),
      ],
    );
  }
}
