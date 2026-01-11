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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My AppBar',
        )
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 10,
                  offset: Offset(0,4)
                )
              ]
            ),
            child:Center(
              child:Text(
                'Mini Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )
              )
            )
          ),
          SizedBox(height:10),
          //row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Expanded(
                child:Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      ),
                    ],
                  ),
                  child:Center(
                    child:Text(
                      'Box 1',
                    ),
                  )
                )
              ),
               Expanded(
                child:Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      ),
                    ],
                  ),
                  child:Center(
                    child:Text(
                      'Box 2',
                    ),
                  )
                )
              ),

               Expanded(
                child:Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      ),
                    ],
                  ),
                  child:Center(
                    child:Text(
                      'Box 3',
                    ),
                  )
                )
              ),
            ]
          ),
          SizedBox(height:10),
          Expanded(
            child:Container(
              width:double.infinity,
              color: Colors.purpleAccent,
              child: Center(
                child: Text(
                  'Expanded Content',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,       
                  )
                )
              ),
            )
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical:15, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(16)
                ),
                child:Center(
                  child: Text(
                    'Button 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  )
                )
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical:15, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(16)
                ),
                child:Center(
                  child: Text(
                    'Button 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  )
                )
              ),
            ]
          ),
          SizedBox(height:10)
        ],
      )
    );
  }
}