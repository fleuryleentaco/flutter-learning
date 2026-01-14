import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  bool isLiked = false;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void resetAll() {
    setState(() {
      counter = 0;
      isLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Interactive Dashboard',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Counter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '$counter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: decrement, child: Text('-')),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: increment, child: Text('+')),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Like State',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            IconButton(
              iconSize:50,
              onPressed:toggleLike,
              icon:Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey, 
              ),
            ),
            Text(
              isLiked ? 'you like this' : "you don't like this"
            ),

            const Spacer(),

            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.black,

              ),
              onPressed:resetAll,
              child: Text('reset all',
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
              ),
            )


          ],
        ),
      ),
    );
  }
}
