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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My app bar', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          //header
          Container(
            color: Colors.amber,
            height: 100,
            width: double.infinity,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //row
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: Center(
                    child: Text('box 1', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: Center(
                    child: Text('box 2', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text(
                  'expanded content',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
