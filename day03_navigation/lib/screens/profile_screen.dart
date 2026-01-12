import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title:Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child:Text('Welcome $name'))
    );
  }
}