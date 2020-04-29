import 'package:flutter/material.dart';

bool checkBoxState = false;
bool checkBoxState1 = false;
bool checkBoxState2 = false;
bool checkBoxState3 = false;
bool checkBoxState4 = false;
bool checkBoxState5 = false;
bool checkBoxState6 = false;
bool checkBoxState7 = false;

class Gorevler extends StatefulWidget {
  @override
  GorevlerState createState() => GorevlerState();
}

class GorevlerState extends State<Gorevler> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  margin: EdgeInsets.all(20),
                  color: Colors.blue.shade100,
                  elevation: 10,
                  child: CheckboxListTile(
                    value: checkBoxState2,
                    onChanged: (secildi) {
                      setState(() {
                        checkBoxState2 = secildi;
                      });
                    },
                    activeColor: Colors.red,
                    title: Text("Lets go to cinema right now!"),
                    secondary: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/kitap.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  margin: EdgeInsets.all(20),
                  color: Colors.blue.shade100,
                  elevation: 10,
                  child: CheckboxListTile(
                    value: checkBoxState7,
                    onChanged: (secildi) {
                      setState(() {
                        checkBoxState7 = secildi;
                      });
                    },
                    activeColor: Colors.red,
                    title: Text("You discover new music today."),
                    secondary: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/music.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  margin: EdgeInsets.all(20),
                  color: Colors.blue.shade100,
                  elevation: 10,
                  child: CheckboxListTile(
                    value: checkBoxState6,
                    onChanged: (secildi) {
                      setState(() {
                        checkBoxState6 = secildi;
                      });
                    },
                    activeColor: Colors.red,
                    title: Text(
                        "'Who don't know art for?'but you do any drawing today..."),
                    secondary: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/wallpaper.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 20,
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imgrosetta.mynet.com.tr/file/10183658/10183658-728xauto.jpg"),
                    radius: 30,
                  ),
                  title: Text(
                    "How many cigarettes did i smoke today?",
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                  ),
                  subtitle: Text(
                    "$_counter",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                      icon: Icon(
                        Icons.smoking_rooms,
                        size: 30,
                      ),
                      onPressed: () {
                        _incrementCounter();
                      })),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 10,
              child: CheckboxListTile(
                checkColor: Colors.white,
                value: checkBoxState,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("I brushed my teeths."),
                secondary: Icon(Icons.add),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 10,
              child: CheckboxListTile(
                checkColor: Colors.white,
                value: checkBoxState3,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState3 = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("I talked to someone outside of myself today."),
                secondary: Icon(Icons.add),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 10,
              child: CheckboxListTile(
                checkColor: Colors.white,
                value: checkBoxState4,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState4 = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("I took my pills today."),
                secondary: Icon(Icons.add),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 10,
              child: CheckboxListTile(
                checkColor: Colors.white,
                value: checkBoxState5,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState5 = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("I kept my room tidy."),
                secondary: Icon(Icons.add),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.blue.shade100,
              elevation: 10,
              child: CheckboxListTile(
                value: checkBoxState1,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState1 = secildi;
                  });
                },
                activeColor: Colors.red,
                title:
                    Text("My sleep is in order (I sleep more than 5 hours)."),
                secondary: Icon(Icons.add),
              ),
            ),
            
          ],
        ));
  }
}
