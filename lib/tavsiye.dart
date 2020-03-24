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
    "Lord of the Rings",
    "Harry Potter",
    "Shawshank Redemption",
    "Hobbit",
    "Interstellar",
    "Inception"
  ];
  List<String> diziler = [
    "How I Met Your Mother",
    "Game of Thrones",
    "Suits",
    "Friends",
    "Vikings",
    "Merlin"
  ];
  List<String> kitaplar = [
    "Father Goriot",
    "Mr. Mercedes",
    "Les Miserables",
    "The Little Prince",
    "Jane Eyre",
    "The Adventures of Tom Sawyer",
    "Utopia",
    "Dr Jekyll and Mr Hyde"
  ];
  List<String> muzikler = [
    "Marconi Union – Weightless",
    "Airstream – Electra",
    "Enya – Watermark",
    "Adele – Someone Like You",
    "Coldplay – Strawberry Swing",
    "Mozart – Canzonetta Sull’aria"
  ];
  List<String> yerler = [
    "Harmankaya Waterfalls",
    "Varagel Tunnel",
    "Kozlu Beach",
    "Zonguldak Mine Museum",
    "Gökgöl Cave",
    "Değirmenağzı Beach",
    "Lighthouse",
    "Zonguldak City Forest"
  ];

  filmDegistir() {
    setState(() {
      seciliFilm++;
      if(seciliFilm == filmler.length)
        seciliFilm = 0;
      return filmler[seciliFilm];
    });
  }

  diziDegistir() {
    setState(() {
      seciliDizi++;
      if(seciliDizi == diziler.length)
        seciliDizi = 0;
      return diziler[seciliDizi];
    });
  }

  kitapDegistir() {
    setState(() {
      seciliKitap++;
      if(seciliKitap == kitaplar.length)
        seciliKitap=0;
      return kitaplar[seciliKitap];
    });
  }

  muzikDegistir() {
    setState(() {
      seciliMuzik++;
      if(seciliMuzik==muzikler.length)
        seciliMuzik=0;
      return muzikler[seciliMuzik];
    });
  }

  yerDegistir() {
    setState(() {
      seciliYer++;
      if(seciliYer==yerler.length)
        seciliYer=0;
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
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/film.jpg"),
                            radius: 30),
                        title: Text("${filmler[seciliFilm]}"),
                        subtitle: Text("Movies"),
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
                    color: Colors.blue.shade100,
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
                          "TV Series",
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              diziDegistir();
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
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/kitap.jpg"),
                            radius: 30),
                        title: Text("${kitaplar[seciliKitap]}"),
                        subtitle: Text("Books"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              kitapDegistir();
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
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/music.jpg"),
                            radius: 30),
                        title: Text("${muzikler[seciliMuzik]}"),
                        subtitle: Text("Music"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              muzikDegistir();
                            })),
                  ),
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/film.jpg"),
                            radius: 30),
                        title: Text("${yerler[seciliYer]}"),
                        subtitle: Text("Places"),
                        trailing: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              yerDegistir();
                            })),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
