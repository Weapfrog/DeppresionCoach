import 'package:flutter/material.dart';

bool checkBoxState = false;
bool checkBoxState1 = false;
bool checkBoxState2= false;

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
                value: checkBoxState1,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState1 = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("I took my pills today."),
                secondary: Icon(Icons.add),
              ),
            ),
          ],
        ));
  }
}
