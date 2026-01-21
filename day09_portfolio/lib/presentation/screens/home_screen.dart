import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/routes/app_routes.dart';
import '../viewmodels/auth_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authVM = context.read<AuthViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              authVM.logout();
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
          ),
        ],
      ),

      body: const Center(
        child:Text(
          'Welcome  🎉',
          style:TextStyle(fontSize: 24)
        )
      )
    );
  }
}
