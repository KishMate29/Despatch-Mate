import 'package:flutter/material.dart';

import 'HomePage.dart';

class DispatchDashboardPage extends StatelessWidget {
  const DispatchDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispatch Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Welcome to the Dispatch Dashboard!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              child: const Text('View Pending Orders'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
                // Navigate to pending orders page
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('View Completed Orders'),
              onPressed: () {
                // Navigate to completed orders page
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Create New Order'),
              onPressed: () {
                // Navigate to new order page
              },
            ),
          ],
        ),
      ),
    );
  }
}
