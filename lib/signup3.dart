import 'package:curequickly/homepage.dart';
import 'package:curequickly/methods/inputdata.dart';
import 'package:curequickly/signup4.dart';
import 'package:flutter/material.dart';

class SignUp3 extends StatefulWidget {
  //final List<InputData> inputData;

  //const SignUp3({Key key, this.inputData}) : super(key: key);
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  final inputData = InputData();

  @override
  Widget build(BuildContext context) {
    final _govtId = TextEditingController();
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp4(),
                              ),
                            );
                            // InputData(
                            //   govtId: _govtId.text,
                            // );

                            inputData.govtId = _govtId.text;
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
