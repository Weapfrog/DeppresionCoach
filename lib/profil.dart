import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/log_in_page.dart';
import 'package:flutter_app/message.dart';
import 'package:flutter_app/message_model.dart';


class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  static double _lowerValue = 1;
  static double _upperValue = 5;
  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 900,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D6),
                    Color(0xFF5B16D0)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.4, 0.7, 0.9])),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 40),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/berke.png",
                    ),
                    radius: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Berke Ozturk",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Age: 21",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "2. Level / 240 Points",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.message),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MessageMe()));
                            }),
                        SizedBox(height: 3),
                        IconButton(
                            icon: Icon(Icons.mood),
                            onPressed: () {
                              debugPrint("Message Me!");
                            }),
                        SizedBox(height: 3),
                      ]),
                  Text(
                    "Im in deppression. Whats poppin?",
                    style: TextStyle(),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Berke",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Posts",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Berke",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Friends",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Berke",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Groups",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  RangeSlider(
                      min: _lowerValue,
                      max: _upperValue,
                      divisions: 4,
                      values: values,
                      labels: RangeLabels(values.start.toString(), values.end.toString()),
                      onChanged: (val){
                        setState(() {
                          values = val;
                        });
                      },  
                      activeColor: Colors.blueGrey,
                      inactiveColor: Colors.black,)
                      ,Container(
                        child: Text("Your Level : 2",style: TextStyle(color: Colors.black87,fontSize: 24),)
                      )
                ],
              
              ),
            ),
          )),
    );
  }
}
