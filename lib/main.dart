import 'package:flutter/material.dart';

import 'log_in_page.dart';
//import 'package:flutterapp_yeni/ui/etkin_liste.dart';

void main() {
  String baslik = "LogInPage";
  runApp(MaterialApp(
    title: "ZBEU-DSC Project Team",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      backgroundColor: Colors.white10,
      primarySwatch: Colors.blueGrey,
    ),
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          baslik,
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
  
      ),
      body: MyCustomForm(),
    ),
  ));
}
