import 'package:curequickly/hospital.dart';
import 'package:flutter/material.dart';

class Positive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/green.jpg'),
                  ),
                ),
              ),
              Text(
                'As you are having symptoms of COVID 19, we recommend you to take a COVID test as soon as possible in order to reduce the risk on you body and also to eleminate the risk of transmission. We insist you to follow the following safety precautions.',
                textAlign: TextAlign.center,
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.35,
                            margin:
                                EdgeInsets.only(bottom: 5, top: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/road.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'You should wash your hands throughly for at least 20 seconds.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.35,
                            margin:
                                EdgeInsets.only(bottom: 5, top: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/urbanjungle.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'You should wash your hands throughly for at least 20 seconds.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.35,
                            margin:
                                EdgeInsets.only(bottom: 5, top: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/mountains.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'You should wash your hands throughly for at least 20 seconds.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hospital(),
                            ),
                          );
                        },
                        child: Text(
                          'TAKE COVID TEST',
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
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
