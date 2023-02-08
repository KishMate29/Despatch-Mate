import 'dart:async';

import 'package:despatch/onboarding.dart';
import 'package:flutter/material.dart';

class onboard2 extends StatefulWidget {
  const onboard2({Key? key}) : super(key: key);

  @override
  State<onboard2> createState() => _onboard2State();
}

class _onboard2State extends State<onboard2> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => onboarding()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              "images/logo.png",
              height: 250,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
