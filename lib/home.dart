import 'package:flutter/material.dart';
import 'package:my_portfolio/landingpage/landing_page.dart';
import 'package:my_portfolio/navbar/nav_bar.dart';

import 'landingpage/landing_page2.dart';
import 'landingpage/landing_page3.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0 ),
              child: LandingPage(),
            ),
            LandingPage2(),
            LandingPage3()
          ],
        ),
      ),
    );
  }
}
