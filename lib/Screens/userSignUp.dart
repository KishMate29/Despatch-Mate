import 'package:despatch/Screens/loginScreen.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import 'HomePage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                "Create an account",
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Name"),
                ),
              ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Phone Number"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Country"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "City Name"),
                ),
              ),
              SizedBox(height: 40),
              // SizedBox(
              //   height: 50,
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Do something when submit button is pressed
              //     },
              //     child: Text("Submit"),
              //   ),
              // ),
              Container(
                child: Center(
                  child: Container(
                    height: 50,
                    margin:
                    EdgeInsets.only( bottom: 16, top: 0),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColor.blue,
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    child: ElevatedButton(
                      //height: 50,width: 500 ,

                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      },

                      child: Center(
                        child: Text(
                          'Submit',
                          style: Helper.getTheme(context).displayLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don`t have an account?',
                      style: TextStyle(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: AppColor.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
