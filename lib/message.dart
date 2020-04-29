import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/chat_screen.dart';

class MessageMe extends StatefulWidget {
  @override
  _MessageMeState createState() => _MessageMeState();
}

class _MessageMeState extends State<MessageMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "MessageMe!",
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
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
              scrollDirection: Axis.vertical,
              children: <Widget>[
                
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Hi dude whatsapp?"),
                      subtitle: Text("10 min ago"),
                      onTap: () => debugPrint("bewke"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Berke"),
                      onTap: () => debugPrint("bewke"),
                      subtitle: Text("Hi dude how are you?"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      onTap: () => debugPrint("bewke"),
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Hi dude whatsapp?"),
                      subtitle: Text("10 min ago"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Hi dude whatsapp?"),
                      subtitle: Text("10 min ago"),
                      onTap: () => debugPrint("bewke"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Hi dude whatsapp?"),
                      subtitle: Text("10 min ago"),
                      onTap: () => debugPrint("bewke"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/berke.png"),
                          radius: 30),
                      title: Text("Hi dude whatsapp?"),
                      onTap: () => debugPrint("bewke"),
                      subtitle: Text("10 min ago"),
                      trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          })),
                )
              ],
            )));
  }
}
