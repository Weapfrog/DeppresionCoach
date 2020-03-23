import 'package:flutter/material.dart';
import 'package:flutter_app/log_in_page.dart';
import 'package:flutter_app/profil.dart';



class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayfaSayisi = 0;
  List<String> fotolar = [
    "assets/images/foto1.jpg",
    "assets/images/foto2.jpg",
    "assets/images/foto3.jpg"
  ];

  sayfaDegistirIleri(int sayfa) {
    setState(() {
      sayfa = sayfaSayisi;
      if (sayfaSayisi < fotolar.length - 1) {
        sayfaSayisi++;
        return fotolar[sayfaSayisi];
      } else
        return fotolar[sayfaSayisi];
    });
  }

  sayfaDegistirGeri(int sayfa) {
    setState(() {
      if (sayfa > 0) {
        sayfa = sayfaSayisi;
        sayfaSayisi--;
        return fotolar[sayfaSayisi];
      } else
        return fotolar[sayfaSayisi];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Container(
            child: Image.asset(fotolar[sayfaSayisi]),
            alignment: Alignment.center,
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ),
                  onPressed: () => sayfaDegistirGeri(sayfaSayisi))),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/berke.png",
                        ),
                        radius: 15,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profil()));
                        });
                      }),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.transparent,
                      elevation:0,
                      child: Text(
                        sayfaSayisi<2 ? "ALP AYGUN" : "BERKE OZTURK"
                        ,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  elevation: 0,
                  color: Colors.transparent,
                  child: Text(
                    "FRIENDS",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
              )
            ],
          ),
          Container(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  ),
                  onPressed: () {
                    sayfaDegistirIleri(sayfaSayisi);
                  })),
          Container(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                },
                color: Colors.pink,
              )),
        ]));
  }
}
