import 'package:flutter/material.dart';
import './survey.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text('Hello'),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    //offset: Offset(0, 3),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/waitinghall.jpeg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus. \nMost people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness.',
                textAlign: TextAlign.justify,
              ),
            ),
            Text(
              'Please click on the below button to take the survey',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Survey(),
                    ),
                  );
                },
                child: Text('Survey'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}