import 'package:curequickly/signup.dart';
import 'package:curequickly/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //use the below line, to avoid keyboard covering the textfields.
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
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
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      border: UnderlineInputBorder(),
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
                    primary: Theme.of(context).primaryColor,
                    shadowColor: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Don\'t have an Account?'),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
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
      ),
    );
  }
}
