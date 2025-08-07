import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(255, 222, 220, 220),
        body: Column(children: [
      SizedBox(
        height: 150,
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'Muhammad Junaid Riaz',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              ' Flutter Front End Developer',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Arifwala Dist Pak, Punjab Pakistan',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
