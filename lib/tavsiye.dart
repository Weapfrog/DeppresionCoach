import 'package:flutter/material.dart';

class Tavsiye extends StatefulWidget {
  @override
  TavsiyeState createState() {
    return TavsiyeState();
  }
}

class TavsiyeState extends State<Tavsiye> {
  int seciliFilm = 0;
  int seciliDizi = 0;
  int seciliKitap = 0;
  int seciliMuzik = 0;
  int seciliYer = 0;
  List<String> filmler = [
    "YUZUKLERIN EFENDISI",
    "Harry Potter",
    "Hababam Sınıfı",
    "a",
    "b",
    "c"
  ];
  List<String> diziler = [
    "HIMYM",
    "GAMEOFTHRONES",
    "FALANFILAN",
    "a",
    "b",
    "c"
  ];
  List<String> kitaplar = ["ÇALIKUSU", "FALAN", "FILAN"];
  List<String> muzikler = ["TAMAM", "DEVAM", "OK"];
  List<String> yerler = ["HARMANKAYA", "FENER", "HALISAHA"];

  filmDegistir() {
    setState(() {
      seciliFilm++;
      return filmler[seciliFilm];
    });
  }

  diziDegistir() {
    setState(() {
      seciliDizi++;
      return diziler[seciliDizi];
    });
  }

  kitapDegistir() {
    setState(() {
      seciliKitap++;
      return kitaplar[seciliKitap];
    });
  }

  muzikDegistir() {
    setState(() {
      seciliMuzik++;
      return muzikler[seciliMuzik];
    });
  }

  yerDegistir() {
    setState(() {
      seciliYer++;
      return yerler[seciliYer];
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
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color.fromARGB(500, 170, 208, 217),
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/film.jpg"),
                            radius: 30),
                        title: Text("${filmler[seciliFilm]}"),
                        subtitle: Text("Film"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              filmDegistir();
                            })),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color.fromARGB(83000000, 201, 212, 197),
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/dizi1.jpg"),
                            radius: 30),
                        title: Text(
                          "${diziler[seciliDizi]}",
                          style: TextStyle(fontStyle: FontStyle.normal),
                        ),
                        subtitle: Text(
                          "Dizi",
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              while (seciliDizi < 2) diziDegistir();
                            })),
                  ),
                ),
                // Divider(color: Colors.black,height:32.0,indent:20),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color.fromARGB(1500, 238, 213, 209),
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/kitap.jpg"),
                            radius: 30),
                        title: Text("${kitaplar[seciliKitap]}"),
                        subtitle: Text("Kitap"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              while (seciliKitap < 2) kitapDegistir();
                            })),
                  ),
                ),
                //Divider(color: Colors.black,height:32.0,indent:20),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color.fromARGB(2000, 229, 185, 182),
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/music.jpg"),
                            radius: 30),
                        title: Text("${muzikler[seciliMuzik]}"),
                        subtitle: Text("Müzik"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              while (seciliMuzik < 2) muzikDegistir();
                            })),
                  ),
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Color.fromARGB(500, 170, 208, 217),
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/film.jpg"),
                            radius: 30),
                        title: Text("${yerler[seciliYer]}"),
                        subtitle: Text("Gezilecek Yerler"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              while (seciliYer < 2) yerDegistir();
                            })),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
