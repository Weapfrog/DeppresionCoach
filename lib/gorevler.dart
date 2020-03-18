import 'package:flutter/material.dart';

bool checkBoxState = false;
bool checkBoxState1 = false;

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
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  color: Colors.green,
                  elevation: 20,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(20),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "http://medya.dpu.edu.tr/files/2016/11/13/5828d080b6bb2/20161113214414.jpeg"),
                      radius: 30,
                    ),
                    title: Text(
                      "Günlük Görev",
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 20),
                    ),
                    subtitle: Text(
                      "Hadi bugün sinemaya gidelim",
                      style: TextStyle(fontSize: 15),
                    ),
                    trailing: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
              color: Colors.red[100],
              elevation: 20,
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images6.alphacoders.com/311/311701.jpg"),
                  radius: 30,
                ),
                title: Text(
                  "zaten ",
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                trailing: Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90.0),
              ),
              margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
              color: Colors.purple[50],
              elevation: 20,
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imgrosetta.mynet.com.tr/file/10183658/10183658-728xauto.jpg"),
                    radius: 30,
                  ),
                  title: Text(
                    "Bugün kaç sigara içtim?",
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
              margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
              color: Colors.yellowAccent[100],
              elevation: 10,
              child: CheckboxListTile(
                value: checkBoxState,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("Bugün dişlerimi fırçaladım"),
                secondary: Icon(Icons.add),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
              color: Colors.yellowAccent[100],
              elevation: 10,
              child: CheckboxListTile(
                value: checkBoxState1,
                onChanged: (secildi) {
                  setState(() {
                    checkBoxState1 = secildi;
                  });
                },
                activeColor: Colors.red,
                title: Text("Bugün ilaçlarımı aldım."),
                secondary: Icon(Icons.add),
              ),
            ),
          ],
        ));
  }
}
