import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(appBar: AppBar(title: const Text('Profile')),
    body: Center(
      child: Text(
        'Welcome $name',
        style: const TextStyle(fontSize: 24),
      ),
    ),
    );
  }
}
