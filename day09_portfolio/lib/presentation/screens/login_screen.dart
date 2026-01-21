import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/routes/app_routes.dart';
import '../viewmodels/auth_viewmodel.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authVM = context.watch<AuthViewModel>();

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'email'),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 25),

            if (authVM.error != null)
              Text(authVM.error!, style: const TextStyle(color: Colors.red)),

            CustomButton(
              text: 'login',
              isLoading: authVM.isLoading,
              onPressed: () async {
                final success = await authVM.login(
                  emailController.text,
                  passwordController.text,
                );

                if (success && context.mounted) {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
