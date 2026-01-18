import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes.dart';
import 'viewmodels/auth_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_) => AuthViewModel()),
      ],
      child:const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Day 08 provider',
      initialRoute: AppRoutes.login,
      routes:AppRoutes.routes,
    );
  }
}
