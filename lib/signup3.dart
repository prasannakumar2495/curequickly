import 'package:curequickly/homepage.dart';
import 'package:curequickly/methods/inputdata.dart';
import 'package:curequickly/signup4.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp3 extends StatefulWidget {
  InputData inputData = InputData();
  SignUp3({this.inputData});
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  InputData _inputData = InputData();
  final _govtId = TextEditingController();
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
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Govt ID',
                          suffixIcon: Icon(
                            Icons.card_membership,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        controller: _govtId,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            if (_govtId.text.length > 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp4(
                                      inputData: InputData(
                                    govtId: _govtId.text,
                                    mobileNumber: widget.inputData.mobileNumber,
                                    emailId: widget.inputData.emailId,
                                    firstName: widget.inputData.firstName,
                                    lastName: widget.inputData.lastName,
                                  )),
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
                                  content: Text(
                                      'Please make sure Password and Conform Password are same'),
                                  duration: Duration(
                                    seconds: 2,
                                  ),
                                ),
                              );
                            }
                            _inputData.govtId = _govtId.text;
                            print(
                              '${widget.inputData.firstName},${widget.inputData.lastName},${widget.inputData.mobileNumber},${widget.inputData.emailId}, ${_inputData.govtId}',
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
