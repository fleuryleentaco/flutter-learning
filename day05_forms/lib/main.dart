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
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //formKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool hidePassword = true;
  String feedbackMessage = '';

  void submitLogin() {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      isLoading = true;
      feedbackMessage = '';
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        feedbackMessage = 'Login successful';
      });
    });
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
      appBar: AppBar(title: Text('My AppBar')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 30),

              const Text(
                'Welcome back',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),

              //email
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              //password
              TextFormField(
                controller: passwordController,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      hidePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Minimun 6 Characters';
                  }

                  return null;
                },
              ),

              const SizedBox(height:30),

              //LoginButton

              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  padding:EdgeInsets.symmetric(vertical: 15, horizontal: 40)
                ),
                onPressed: isLoading ? null :submitLogin,

                child: isLoading 
                ? const SizedBox(
                  height:22,
                  width:22,
                  child:CircularProgressIndicator(
                    strokeAlign:2,
                    color:Colors.white,
                  )
                )
                : const Text(
                  'Login',
                  style:TextStyle(fontSize:16)
                )
              ),

              const SizedBox(height:20),

              //feedback
              if(feedbackMessage.isNotEmpty)
              Text(
                feedbackMessage,
                textAlign: TextAlign.center,
                style:TextStyle(
                  color:Colors.green,
                  fontSize:16,
                  fontWeight:FontWeight.bold,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
