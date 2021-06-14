import 'package:curequickly/negative.dart';
import 'package:curequickly/positive.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  int selectRadioButton1;
  int selectRadioButton2;
  int selectRadioButton3;
  int selectRadioButton4;

  @override
  void initState() {
    super.initState();
    selectRadioButton1 = 0;
    selectRadioButton2 = 0;
    selectRadioButton3 = 0;
    selectRadioButton4 = 0;
  }

  setSelectedRadio1(int val1) {
    setState(() {
      selectRadioButton1 = val1;
    });
  }

  setSelectedRadio2(int val2) {
    setState(() {
      selectRadioButton2 = val2;
    });
  }

  setSelectedRadio3(int val3) {
    setState(() {
      selectRadioButton3 = val3;
    });
  }

  setSelectedRadio4(int val4) {
    setState(() {
      selectRadioButton4 = val4;
    });
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
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/survey.jpeg'),
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      Text(
                        'Please complete the following survey and select the appropriate answers based on your symptoms. We will tell you whether you have the change of having COVID 19 or not based on the options that you have selected.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Do you have the following symptoms?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              'Cold',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectRadioButton1,
                                onChanged: (val1) {
                                  print('$val1');
                                  setSelectedRadio1(val1);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Yes',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectRadioButton1,
                                onChanged: (val1) {
                                  print('$val1');
                                  setSelectedRadio1(val1);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'No',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              'Fever',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectRadioButton2,
                                onChanged: (val2) {
                                  print('$val2');
                                  setSelectedRadio2(val2);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Yes',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectRadioButton2,
                                onChanged: (val2) {
                                  print('$val2');
                                  setSelectedRadio2(val2);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'No',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              'Cough',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectRadioButton3,
                                onChanged: (val3) {
                                  print('$val3');
                                  setSelectedRadio3(val3);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Yes',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectRadioButton3,
                                onChanged: (val3) {
                                  print('$val3');
                                  setSelectedRadio3(val3);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'No',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              'Body Pains',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectRadioButton4,
                                onChanged: (val4) {
                                  print('$val4');
                                  setSelectedRadio4(val4);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Yes',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectRadioButton4,
                                onChanged: (val4) {
                                  print('$val4');
                                  setSelectedRadio4(val4);
                                },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'No',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            if ((selectRadioButton1 != 0) &&
                                (selectRadioButton2 != 0) &&
                                (selectRadioButton3 != 0) &&
                                (selectRadioButton4 != 0)) {
                              if ((selectRadioButton1 +
                                      selectRadioButton2 +
                                      selectRadioButton3 +
                                      selectRadioButton4) ==
                                  8) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Negative(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Positive(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Text('SUBMIT'),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
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
