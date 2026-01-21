import 'package:flutter/material.dart';
import '../../presentation/screens/login_screen.dart';
import '../../presentation/screens/home_screen.dart';

class AppRoutes {
  static const login = '/';
  static const home = '/home';

  static final routes = <String, WidgetBuilder>{
    login:(_) => const LoginScreen(),
    home:(_) => const HomeScreen(),
  };
}
