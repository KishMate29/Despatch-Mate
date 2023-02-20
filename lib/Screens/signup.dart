import 'package:despatch/loginScreen.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';

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
              SizedBox(height: 20),
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
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('Name',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "First and last name",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('Email',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "example asdfghjkl@hotmail.com",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('Phone Number',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Start with country code ",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('Country',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Country name",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('City Name',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "City name",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // margin:
                //     EdgeInsets.only(left: 30, right: 290, bottom: 0, top: 16),
                child: Text('Plate Number',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.line),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Plate Number",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 16,
                      color: AppColor.hint,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Do something when submit button is pressed
                  },
                  child: Text("Submit"),
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
