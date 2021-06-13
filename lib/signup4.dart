import 'package:curequickly/homepage.dart';
import 'package:curequickly/methods/inputdata.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
  InputData inputData = InputData();
  SignUp4({this.inputData});
}

class _SignUp4State extends State<SignUp4> {
  InputData _inputData = InputData();
  final _password = TextEditingController();
  final _conformPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Password',
                        ),
                        obscureText: true,
                        controller: _password,
                      ),
                      TextField(
                        cursorColor: Theme.of(context).primaryColor,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          border: UnderlineInputBorder(),
                          hintText: 'Conform Password',
                        ),
                        obscureText: true,
                        controller: _conformPassword,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(
                                  inputData: InputData(
                                    govtId: widget.inputData.govtId,
                                    mobileNumber: widget.inputData.mobileNumber,
                                    emailId: widget.inputData.emailId,
                                    firstName: widget.inputData.firstName,
                                    lastName: widget.inputData.lastName,
                                    password: _password.text,
                                    conformPassword: _conformPassword.text,
                                  ),
                                ),
                              ),
                            );
                            _inputData.password = _password.text;
                            _inputData.conformPassword = _conformPassword.text;
                            print(
                              '${widget.inputData.firstName},${widget.inputData.lastName},${widget.inputData.mobileNumber},${widget.inputData.emailId},${widget.inputData.govtId}, ${_inputData.password},${_inputData.conformPassword}',
                            );
                          },
                          child: Text('SIGN UP'),
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
