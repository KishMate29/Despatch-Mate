// // ignore_for_file: file_names
//
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:despatch/Screens/signUpAs.dart';
import 'package:flutter/material.dart';
import 'package:despatch/const/colors.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'Screens/HomePage.dart';
import 'utils/helper.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//
class _LoginScreenState extends State<LoginScreen> {
//   late GoogleSignIn _googleSignIn;
//
//   @override
//   void initState() {
//     super.initState();
//     _googleSignIn = GoogleSignIn(
//       scopes: [
//         'email',
//         'https://www.googleapis.com/auth/contacts.readonly',
//       ],
//     );
//   }
//   Future<void> _handleSignIn() async {
//     try {
//       await _googleSignIn.signIn();
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//       );
//     } catch (error) {
//       print(error);
//     }
//   }
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 0, left: 16, right: 94, bottom: 50),
                    child: const Text(
                        'Hurry! Log in, we have the best package offer for you ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  // Email/Phone number
                  Container(
                    margin: EdgeInsets.only(left: 19, right: 200, bottom: 0),
                    child: Text('Email/Phone number',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ),
                  // Email
                  Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white, //boxShadow: BoxShadow
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Your username/Email',
                            hintStyle: TextStyle(color: Colors.black26)),
                      )),
                  //password
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 290, bottom: 0, top: 16),
                    child: Text('Password',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ),
                  //password box
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white, //boxShadow: BoxShadow
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          // prefixIcon: ,
                          suffixIcon: Icon(Icons.visibility_off),
                          border: InputBorder.none,
                          hintText: '********',
                          hintStyle: TextStyle(color: Colors.black26)),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //password demand
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Password must contain letters and numbers ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            )),
                        // Forgot Password
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 0),
                          child: TextButton(
                              onPressed: () {}, child: Text('Forgot Passwor?')),
                        )
                      ],
                    ),
                  ),

                  //login

                  Container(
                    child: Center(
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(
                            left: 16, right: 16, bottom: 16, top: 0),
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
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },

                          child: Center(
                            child: Text(
                              'Login',
                              style: Helper.getTheme(context).displayLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //don't have an account
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, bottom: 8, top: 2),
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
                                  builder: (context) => SignUpAs()),
                            );
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                color: AppColor.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                    width: 100,
                    child: Divider(
                      thickness: 1,
                      color: AppColor.blue,
                    ),
                  ),

                  SizedBox(height: 10),

                  //button login facebook

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      //height: 50,width: 500 ,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Login With Facebook',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  // login google

                  SizedBox(height: 10),

                  // Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //     child: Container(
                  //       padding: const EdgeInsets.all(16),
                  //       // Icon(Icons.facebook, color: AppColor.blue,),
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: AppColor.blue),
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(
                  //           13,
                  //         ),
                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           'Login with Google',
                  //           style: TextStyle(
                  //               color: AppColor.blue,
                  //               fontSize: 15,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ),
                  //     )),
                  SizedBox(
                    height: 50,
                    width: 350,
                    // width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColor.blue),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName(
                              "google.png",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Login with Google")
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

//
// Future<void> _signInWithGoogle() async {
//   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//
//   if (googleUser != null) {
//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//     final OAuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
//     final User? user = userCredential.user;
//
//     // Add your own logic for what to do after the user is signed in with Google.
//   }
// }
