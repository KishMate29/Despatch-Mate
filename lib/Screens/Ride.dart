import 'package:flutter/material.dart';

class RideAppDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20),
            height: 130,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png', height: 40),
                IconButton(
                  icon: Icon(Icons.menu, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/lambert.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
              padding: EdgeInsets.all(20),
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Recent Trips'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text('Payment Methods'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person_pin),
                    title: Text('Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('Help & Support'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
