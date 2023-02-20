import 'package:flutter/material.dart';

import 'HomePage.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  final screens = [];

  int _currentIndex = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            height: 130,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png', height: 40),
                IconButton(
                  icon: const Icon(Icons.menu, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/lambert.jpg'),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Total Earnings'),
                    trailing: Text('\$153.25'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.directions_car),
                    title: Text('Total Rides'),
                    trailing: Text('12'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Rating'),
                    trailing: Text('5.0'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Recent Rides'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
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
