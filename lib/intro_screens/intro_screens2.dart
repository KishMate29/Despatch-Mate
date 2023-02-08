import 'package:despatch/homepage.dart';
import 'package:despatch/intro_screens/intro_screens3.dart';
import 'package:flutter/material.dart';


class IntroPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Spacer(),
            Container(
              margin: EdgeInsets.only(top: 100, bottom: 0.0),
              child: Image.asset(
                "images/onboard2.png",
                height: 250,
              ),
            ),
            // Spacer(),
            Center(
              child: Text(
                "As a vendor, we can help bring your clients close to you through our delivery service",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(top: 10, bottom: 16, left: 10, right: 16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  maximumSize: Size(double.infinity, 100),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage3()),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Satoshi',
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(top: 10, bottom: 16, left: 10, right: 16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  maximumSize: Size(double.infinity, 100),
                  side: BorderSide(color: Colors.blue
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Satoshi',
                      color: Colors.blue
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
