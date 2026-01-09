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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          padding:  EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow:[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0,4)
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.flutter_dash, size:40, color: Colors.brown),
              SizedBox(height: 15),
              Text(
                'Welcome World',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold
                ) 
              ),
              SizedBox(height: 15),
              Text(
                'This my first Flutter App',
                style: TextStyle( 
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )
              ),
              SizedBox(height: 15),
              Icon(Icons.person, size: 40, color:Colors.blue),
            ] ,
          ),
        )
      )
    );
  }
}