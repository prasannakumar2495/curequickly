import 'package:curequickly/signup.dart';
import 'package:curequickly/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Flutter CureQuickly'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/curequickly.jpeg'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Mobile Number',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcome(),
                    ),
                  );
                },
                child: Text('SIGN IN'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  shadowColor: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Don\'t have an Account?'),
                  TextButton(
                    child: Text('SIGN UP'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
