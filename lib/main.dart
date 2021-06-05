import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Expense Chart'),
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.all(50),
                  width: 400,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Mobile Number',
                    ),
                  ),
                ),
              ),
              /*Container(
                child: Image.asset(
                  'images/image1.png',
                  fit: BoxFit.cover,
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
