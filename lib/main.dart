import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  Color btnColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              btnColor = Color.fromARGB(255, 233, 221, 117);
              count = 0;
            });
          },
          child: Icon(Icons.refresh, size: 30,),
          backgroundColor: Color.fromARGB(255, 242, 242, 157),
          foregroundColor: Color.fromARGB(255, 203, 203, 88),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('images/mostalahadikr.jpg'),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              Text(
                '$count',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              OutlinedButton(
                onPressed: () {
                  setState(() {
                    btnColor =  Color.fromARGB(255, 233, 221, 117);
                    count++;
                  });
                },
                child: Text(
                  'اذكر',
                  style: TextStyle(
                    color: btnColor,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),       
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
