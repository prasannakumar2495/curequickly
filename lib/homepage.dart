import 'package:curequickly/methods/inputdata.dart';
import 'package:curequickly/signup1.dart';
import 'package:curequickly/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  InputData inputData = InputData();
  HomePage({this.inputData});
}

class _HomePageState extends State<HomePage> {
  final _uMobileNumber = TextEditingController();
  final _uPassword = TextEditingController();
  bool _obscureText = true;

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
                      suffixIcon: Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      hintText: 'Enter Registered Mobile Number',
                    ),
                    controller: _uMobileNumber,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: TextField(
                    obscureText: _obscureText,
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
                      suffixIcon: Icon(
                        Icons.password,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    controller: _uPassword,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ignore: unrelated_type_equality_checks
                    if ((int.parse(_uMobileNumber.text) ==
                            widget.inputData.mobileNumber) &&
                        // ignore: unrelated_type_equality_checks
                        (_uPassword.text == widget.inputData.conformPassword)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Welcome(),
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login Successful!'),
                          duration: Duration(
                            seconds: 2,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter valid Login Details!'),
                          duration: Duration(
                            seconds: 2,
                          ),
                        ),
                      );
                    }
                    print(
                      '${widget.inputData.mobileNumber},${widget.inputData.conformPassword}',
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
                            builder: (context) => SignUp1(),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter following data!'),
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
