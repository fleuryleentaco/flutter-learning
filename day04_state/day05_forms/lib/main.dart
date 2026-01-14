import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Day 05 Forms',
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //key du formulaire
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  String message = '';

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
        message = '';
      });

      // simulation d'un login (api plus tard)

      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
          message = 'Login successful';
        });
      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 05 - Loginn form'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),

              const Text(
                'welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              //Email
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              //Password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Passwordis required';
                  }
                  if (value.length < 6) {
                    return 'Minimum 6 caracters';
                  }
                  return null;
                },
              ),
              const SizedBox(height:30),

              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical:15),
                ),
                onPressed: isLoading ? null : submitForm,
                child: isLoading
                ? const CircularProgressIndicator(color:Colors.white)
                : const Text(
                  'Login',
                  style:TextStyle(fontSize:16, color:Colors.white,)
                )
              ),

              const SizedBox(height:20),

              //message

              if(message.isNotEmpty)
              Text(

                message,
                textAlign:TextAlign.center,
                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)
              )
            ],
          ),
        ),
      ),
    );
  }
}
