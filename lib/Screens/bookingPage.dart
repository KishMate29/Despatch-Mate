import 'package:despatch/const/colors.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class DashboardScreen extends StatefulWidget implements PreferredSizeWidget {

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  final screens = [];

int _currentIndex = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text(
          "Bookings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Perform some action
            },
            color: Colors.black,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
        ), toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ).bodyMedium, titleTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ).titleLarge,
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.symmetric( vertical: 5, horizontal: 5),
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dispatch rider',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:AssetImage('assets/images/lambert.jpg'),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Sapa'),
                          SizedBox(width: 8),
                          Icon(Icons.verified, color: Colors.blue),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    children: [
                      Icon(Icons.directions_bike),
                      SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: '90+', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            TextSpan(text: ' Trips', style: TextStyle(color: AppColor.placeholder)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    children: [
                      Icon(Icons.badge),
                      SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: '3+', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            TextSpan(text: ' Years experience', style: TextStyle(color: AppColor.placeholder)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    children: [
                      Icon(Icons.star),
                      SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: '4+', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            TextSpan(text: ' Stars', style: TextStyle(color: AppColor.placeholder)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


        bottomNavigationBar: Container(
        // height: 70,
        margin: EdgeInsets.only(top: 20),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Implement your action here
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.library_books,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Implement your action here
                  // print('Bookings button pressed');
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  DashboardScreen()));
                },
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Implement your action here
                },
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Implement your action here
                },
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );


  }
}

//
//
//

//
//
//