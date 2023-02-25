import 'package:flutter/material.dart';

import '../const/colors.dart';
import 'Dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final screens = [];

  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColor.blue,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                              AssetImage('assets/images/lambert.jpg'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome,',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {
                          // TODO: Implement notification button action
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Track Dispatch Rider',
                    style: TextStyle(
                      height: 19,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Satoshi',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Insert tracking ID here',
                              hintStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Satoshi',
                                color: Color(0xffcccccc),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // TODO: Implement track button action
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Track',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Satoshi',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // TODO: Add the rest of your page content here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                    MaterialPageRoute(builder: (context) => const DashboardScreen()));
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
    );
  }
}
