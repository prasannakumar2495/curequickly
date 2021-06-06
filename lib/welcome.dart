import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                child: Text('Welcome'),
                alignment: Alignment.topCenter,
              ),
              Text('Hello'),
              Container(
                child: Image.asset(
                  'assets/images/waitinghall.jpeg',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
