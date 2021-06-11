import 'package:curequickly/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    //the below code will not allow the orientation to be landscape.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      //the below code is to remove the debug label in the application top right corner.
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple[900],
        primaryColorLight: Colors.white,
      ),
    );
  }
}
