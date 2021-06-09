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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 10,
                children: <Widget>[
                  Container(
                    height: 200,
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
                        image: AssetImage('assets/images/survey.jpeg'),
                      ),
                    ),
                  ),
                  Text(
                    'Please complete the following survey and select the appropriate answers based on your symptoms. We will tell you whether you have the change of having COVID 19 or not based on the options that you have selected.',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Do you have the following symptoms?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
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
                          ),
                          Text(
                            'No',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
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
                          ),
                          Text(
                            'No',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
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
                          ),
                          Text(
                            'No',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Positive(),
                          ),
                        );
                      },
                      child: Text('SUBMIT'),
                    ),
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
