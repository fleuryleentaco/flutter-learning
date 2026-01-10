import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'flutter demo',
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
      appBar:AppBar(
        title: Text(
          'My App Bar',
        )
      ),
      body:Column(
        children: [
          Container(
            width:double.infinity,
            height: 100,
            color: Colors.grey,
            child:Center(
              child: Text(
                'Mini Dashboard',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )
              )
            )
          ),
          SizedBox(height: 10),
          //row
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      )
                    ]
                  ),
                  child: Center(
                    child:Text(
                      'Box 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                )
              ),

              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.lime,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      )
                    ]
                  ),
                  child: Center(
                    child:Text(
                      'Box 2',
                      style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                )
              ),

              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0,4),
                      )
                    ]
                  ),
                  child: Center(
                    child:Text(
                      'Box 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                )
              )
            ],
          ),

          SizedBox(height: 10),

          Expanded(
            child: Container(
              color: Colors.teal,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Expanded Content',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )
                )
              )
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.deepOrange,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Center(
                  child: Text(
                    'Button 1',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              ),

               Container(
                color: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Center(
                  child: Text(
                    'Button 2',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              ),
              
            ]
          ),
          SizedBox(height: 10)

        ],
      ) 
    );
  }
}