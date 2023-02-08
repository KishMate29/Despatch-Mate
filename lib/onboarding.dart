import 'package:despatch/intro_screens/intro_screens1.dart';
import 'package:despatch/intro_screens/intro_screens2.dart';
import 'package:despatch/intro_screens/intro_screens3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController _controller = PageController();

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
            alignment: Alignment(0, 0.5),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),

        ],
      ),
    );
  }
}
