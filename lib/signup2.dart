import 'package:curequickly/homepage.dart';
import 'package:curequickly/methods/inputdata.dart';
import 'package:curequickly/signup3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp2 extends StatefulWidget {
  InputData inputData = InputData();
  SignUp2({this.inputData});
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  InputData _inputData = InputData();
  final _mobileNumber = TextEditingController();
  final _emailId = TextEditingController();
  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'CURE QUICKLY',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/curequickly.jpeg'),
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Wrap(
                    //spacing: 20,
                    runSpacing: 5,
                    children: <Widget>[
                      TextField(
                        cursorColor: Theme.of(context).primaryColor,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Mobile Number',
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        controller: _mobileNumber,
                      ),
                      TextField(
                        cursorColor: Theme.of(context).primaryColor,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Email ID',
                          suffixIcon: Icon(
                            Icons.email,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        controller: _emailId,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            if ((_mobileNumber.text.length == 10) &&
                                validateEmail(_emailId.text)) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp3(
                                    inputData: InputData(
                                      mobileNumber:
                                          int.parse(_mobileNumber.text),
                                      emailId: _emailId.text,
                                      firstName: widget.inputData.firstName,
                                      lastName: widget.inputData.lastName,
                                    ),
                                  ),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please enter following data!'),
                                  duration: Duration(
                                    seconds: 2,
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please enter valid details!'),
                                  duration: Duration(
                                    seconds: 2,
                                  ),
                                ),
                              );
                            }
                            _inputData.mobileNumber =
                                int.parse(_mobileNumber.text);
                            _inputData.emailId = _emailId.text;
                            print(
                              '${widget.inputData.firstName},${widget.inputData.lastName},${_inputData.mobileNumber},${_inputData.emailId}',
                            );
                          },
                          child: Text('NEXT'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Have an Account?'),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please enter Login Details!'),
                                  duration: Duration(
                                    seconds: 2,
                                  ),
                                ),
                              );
                            },
                            child: Text('SIGN IN'),
                          ),
                        ],
                      )
                    ],
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
