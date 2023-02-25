import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'LandingScreens/intro_screens1.dart';
import 'LandingScreens/intro_screens2.dart';
import 'LandingScreens/intro_screens3.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);
  final PageController _controller = PageController(keepPage: true);
  static const routeName = "/landingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                dotHeight: 8,
                dotWidth: 30,
                activeDotColor: Colors.blue,
                dotColor: Color(0xFFBDBDBD),
              ),
              onDotClicked: (index) => print('Clicked on dot $index'),
            ),
          ),
        ],
      ),
    );
  }
}
