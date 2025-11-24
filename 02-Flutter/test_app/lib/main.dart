import 'package:flutter/material.dart';

void main() {
  runApp(const GreetingCardApp());
}

class GreetingCardApp extends StatelessWidget {
  const GreetingCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeting Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Greeting Card'),
          backgroundColor: Colors.teal,
          centerTitle: true,  // Centers the title
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Icon
              const Icon(
                Icons.account_circle,
                size: 120,
                color: Colors.teal,
              ),
              const SizedBox(height: 20),
              
              // Name
              const Text(
                'Abdulkadir',  // Replace with your name
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              
              // Title/Role
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 30),
              
              // Divider
              Container(
                width: 200,
                height: 2,
                color: Colors.teal,
              ),
              const SizedBox(height: 30),
              
              // Info Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(width: 10),
                  Text(
                    'abdulkadir@ooniverse.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              
              // Info Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(width: 10),
                  Text(
                    '+1 234 567 8900',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              
              // Info Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on, color: Colors.teal),
                  SizedBox(width: 10),
                  Text(
                    'Navsari, Gujarat ',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[100],  // Light background
      ),
    );
  }
}