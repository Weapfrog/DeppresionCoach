import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/anasayfa.dart';
import 'package:flutter_app/gorevler.dart';
import 'package:flutter_app/profil.dart';
import 'package:flutter_app/tavsiye.dart';
import 'package:flutter_app/test.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  int seciliSayfa = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(bottom: 50),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage:
                            AssetImage("assets/images/deppression.jpeg"),
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.blue.shade100,
                      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      elevation: 0,
                      child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(Icons.account_circle),
                              hintText: 'Username',
                              labelText: 'Username *',
                            ),
                            onSaved: (String value) {},
                            validator: (String value) {
                              return value.contains('@')
                                  ? 'Do not use the @.'
                                  : null;
                            },
                          ))),
                  Divider(color: Colors.white),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      color: Colors.blue.shade100,
                      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            hintText: 'Password',
                            labelText: 'Password *',
                          ),
                          onSaved: (String value) {},
                          validator: (String value) {
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
                          },
                          obscureText: true,
                        ),
                      )),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage())),
                        textColor: Colors.blueGrey,
                        child: Container(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(letterSpacing: 5.0),
                          ),
                        ),
                      )),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage())),
                      textColor: Colors.blueGrey,
                      child: Text(
                        "SIGNIN",
                        style: TextStyle(letterSpacing: 5),
                      ),
                    ),
                  )
                ]))
      ],
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignInPage"),
        ),
        body: ListView(children: <Widget>[
          Form(
              child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.add),
                    hintText: 'Name',
                    labelText: 'Name *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: false,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.add),
                    hintText: 'Surname',
                    labelText: 'Surname *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: false,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Age',
                    labelText: 'Age *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: false,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'hotmail/gmail etc. *',
                    labelText: 'e-Mail',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: false,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_box),
                    hintText: 'Nickname',
                    labelText: 'Nickname *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: false,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    hintText: 'Password',
                    labelText: 'Password *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: true,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    hintText: 'Password again',
                    labelText: 'Password *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: true,
                ),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 50),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TextValue()));
                    },
                    child: Text("Continue"),
                  ))
            ],
          ))
        ]));
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  int aktifSayfa = 3;
  gecerliSayfa(int sayfa) {
    if (sayfa == 0) {
      return Gorevler();
    }

    if (sayfa == 1) {
      return Anasayfa();
    }

    if (sayfa == 2) {
      return Tavsiye();
    }

    if (sayfa == 3) {
      return Profil();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Just Do It"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  debugPrint("Camera");
                }),
            IconButton(
                icon: Icon(Icons.perm_phone_msg),
                onPressed: () {
                  debugPrint("Connect Us");
                }),
            IconButton(
                icon: Icon(Icons.not_listed_location),
                onPressed: () {
                  debugPrint("Perpose of App");
                }),
          ],
        ),
        body: gecerliSayfa(aktifSayfa),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.blueGrey),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            currentIndex: aktifSayfa,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.local_play),
                title: Text(
                  "Missions",
                  textDirection: TextDirection.ltr,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "HomePage",
                  textDirection: TextDirection.ltr,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.live_help),
                title: Text(
                  "Advices",
                  textDirection: TextDirection.ltr,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                title: Text(
                  "Profile",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ],
            onTap: (int i) {
              aktifSayfa = i;
              setState(() {});
            },
          ),
        ));
  }
}
