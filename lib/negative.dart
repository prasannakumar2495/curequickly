import 'package:curequickly/homepage.dart';
import 'package:flutter/material.dart';

class Negative extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              runSpacing: 5,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/stay.jpeg'),
                    ),
                  ),
                ),
                Text(
                  'Thank you for taking the time to complete the survey. You are most likely not infected with COVID 19 because you are not experiencing any symptoms associated to the virus.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Succesfully Logged Out'),
                        ),
                      );
                    },
                    child: Text(
                      'SIGN OUT',
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
