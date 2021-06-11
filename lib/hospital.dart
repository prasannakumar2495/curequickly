import 'package:curequickly/homepage.dart';
import 'package:curequickly/negative.dart';
import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
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
          child: ListView(
            children: <Widget>[
              Wrap(
                runSpacing: 10,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: FittedBox(
                      child: Text(
                        'Survey Results and Hospitals List',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'By the symptoms that you have selected in the survey, we find that you are highly symptomatic of having COVID 19. We have given you the list of the hospitals, when COVID test is being done. We recommend you take that test as soon as possible.',
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/th.jpeg'),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Trinity Hospital and Heart Foundation, Teachers College Circle, Kankanpalya Main Rd, near RV, Basavanagudi, Bengaluru, Karnataka, 560004.',
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/ms.jpeg'),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Ramaiah Memorial Hospital, New BEL Rd, M S Ramaiah Nagar, MSRIT Post, Bengaluru, Karnataka, 560054.',
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/st.jpeg'),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'St. John\'s Medical College Hospital, Koramangala 2nd Block, Bengaluru, Karnataka, 560034.',
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'As long as you don\'t have a fever or other symptoms, isolate yourself from the moment you first noticed COVID 19 symptoms or from the date you tested positive. Testing is usually not required when selecting when to stop isolation.',
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Negative(),
                          ),
                        );
                      },
                      child: Text(
                        'SIGN OUT',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
