import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/auth_viewmodel.dart';
import '../routes.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authVM = context.watch<AuthViewModel>();

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void login() async {
      await authVM.login(emailController.text, passwordController.text);

      if (authVM.isLoggedIn) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            CustomButton(
               text: 'Login',
              isLoading: authVM.isLoading,
              onPressed: login,
            ),
          ],
        ),
      ),
    );
  }
}
