import 'package:flutter/material.dart';
import '../routes.dart';
import '../services/auth_service.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _authService = AuthService();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;
  bool hidePassword = true;

  void login() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => isLoading = true);

    bool success = await _authService.login(
      emailController.text,
      passwordController.text,
    );
    setState(() => isLoading =false);

    if(success){
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Login')),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Form(
          key:_formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize:26, fontWeight:FontWeight.bold)
              ),
              const SizedBox(height:30),

              TextFormField(
                controller:emailController,
                decoration: const InputDecoration(
                  labelText:'Email',
                  border:OutlineInputBorder() 
                                ),
                    validator:(v) =>
                    v ==null || v.isEmpty ? 'Email required' : null,            
              ),

              const SizedBox(height:20),

              TextFormField(
                controller:passwordController,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border:const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon:Icon(
                      hidePassword 
                      ? Icons.visibility
                      : Icons.visibility_off,
                    ),
                    onPressed:() {
                      setState(() => hidePassword = !hidePassword);
                    }
                  )
                ),
                validator: (v) =>
                v==null || v.length < 6 ? 'Min 6 chars' : null,
              ),

              const SizedBox(height:30),

              CustomButton(
                text: 'Login',
                isLoading: isLoading,
                onPressed: login,
              )
            ]
          )
        )
      )
    );
  }
}
