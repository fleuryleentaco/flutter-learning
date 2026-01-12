import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Text('Go to Details'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments:'Lee Fleury');
              },
              child: Text('Go To profile'),
            ),
          ],
        ),
      ),
    );
  }
}
