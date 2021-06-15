import 'package:curequickly/methods/inputdata.dart';
import 'package:curequickly/signup2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp1 extends StatefulWidget {
  InputData inputData = InputData();

  SignUp1({this.inputData});

  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  InputData _inputData = InputData();
  final _firstName = TextEditingController();

  final _lastName = TextEditingController();

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
                          hintText: 'Enter First Name',
                          suffixIcon: Icon(
                            Icons.person,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        controller: _firstName,
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
                          hintText: 'Enter Last Name',
                          suffixIcon: Icon(
                            Icons.person,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        controller: _lastName,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            if ((_firstName.text.length > 0) &&
                                (_lastName.text.length > 0)) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp2(
                                    inputData: InputData(
                                      firstName: _firstName.text,
                                      lastName: _lastName.text,
                                    ),
                                  ),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Please enter following details!'),
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
                            _inputData.firstName = _firstName.text;
                            _inputData.lastName = _lastName.text;
                            print(
                              '${_inputData.firstName},${_inputData.lastName}',
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
                              Navigator.pop(context);
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
