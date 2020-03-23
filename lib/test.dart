import 'package:flutter/material.dart';
import 'package:flutter_app/log_in_page.dart';

class TextValue extends StatefulWidget {
  TextValue({Key key, this.title}) : super(key: key);
  final String title;
  @override
  TextValueState createState() => TextValueState();
}
class TextValueState extends State<TextValue> {
  String sehir = "";
  String oyle="";
  String yys="";
  String dnm="";
  String dvp="";
  String txt="";
  String plm="";
  String ylm="";
  String pdf="";
  String ist="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(

        child: ListView(
          children: <Widget>[
            Text("QUESTION-I",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Divider(color: Colors.red,),
            RadioListTile<String>(
              value: "I don't feel sad",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen deger=$deger");
                });
              },
              title: Text("I don't feel sad"),
            ),
            RadioListTile<String>(
              value: "I feel sad",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen deger=$deger");
                });
              },
              title: Text("I feel sad"),
            ),
            RadioListTile<String>(
              value: "I am always upset and I can't recover myself from this feeling.",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen deger=$deger");
                });
              },
              title: Text("I am always upset and I can't recover myself from this feeling."),
            ),
             RadioListTile<String>(
              value: "I am so sad and unhappy that I can't endure.",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen deger=$deger");
                });
              },
              title: Text("I am so sad and unhappy that I can't endure."),
            ),

            Text("QUESTION-II",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I hope my future.",
              groupValue: oyle,
              onChanged: (deger2) {
                setState(() {
                  oyle = deger2;
                  debugPrint("Secilen deger=$deger2");
                });
              },
              title: Text("I hope my future."),
            ),
             RadioListTile<String>(
              value: "I feel a little bit hopeless about the future.",
              groupValue: oyle,
              onChanged: (deger2) {
                setState(() {
                  oyle = deger2;
                  debugPrint("Secilen deger=$deger2");
                });
              },
              title: Text("I feel a little bit hopeless about the future."),
            ),
             RadioListTile<String>(
              value: "I hopeless my future.",
              groupValue: oyle,
              onChanged: (deger2) {
                setState(() {
                  oyle = deger2;
                  debugPrint("Secilen deger=$deger2");
                });
              },
              title: Text("I hopeless my future."),
            ),
             RadioListTile<String>(
              value: "No future for me and this is not going to be better",
              groupValue: oyle,
              onChanged: (deger2) {
                setState(() {
                  oyle = deger2;
                  debugPrint("Secilen deger=$deger2");
                });
              },
              title: Text("No future for me and this is not going to be better"),
            ),
             Text("QUESTION-III",style: TextStyle(color: Colors.red,fontSize: 20.0),),
             Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I don't think I am not succesful.",
              groupValue: yys,
              onChanged: (deger3) {
                setState(() {
                  yys = deger3;
                  debugPrint("Secilen deger=$deger3");
                });
              },
              title: Text("I don't think I am not succesful."),
            ),
            RadioListTile<String>(
              value: "I have failure than many people around me.",
              groupValue: yys,
              onChanged: (deger3) {
                setState(() {
                  yys = deger3;
                  debugPrint("Secilen deger=$deger3");
                });
              },
              title: Text("I have failure than many people around me."),
            ),
            RadioListTile<String>(
              value: "I look to much unsuccessful when I look my past.",
              groupValue: yys,
              onChanged: (deger3) {
                setState(() {
                  yys = deger3;
                  debugPrint("Secilen deger=$deger3");
                });
              },
              title: Text("I look to much unsuccessful when I look my past."),
            ),
             RadioListTile<String>(
              value: "I see myself completely unsuccessful.",
              groupValue: yys,
              onChanged: (deger3) {
                setState(() {
                  yys = deger3;
                  debugPrint("Secilen deger=$deger3");
                });
              },
              title: Text("I see myself completely unsuccessful."),
            ),
             Text("QUESTION-IV",style: TextStyle(color: Colors.red,fontSize: 20.0),),
             Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I can enjoy everything as before.",
              groupValue: dnm,
              onChanged: (deger4) {
                setState(() {
                  dnm = deger4;
                  debugPrint("Secilen deger=$deger4");
                });
              },
              title: Text("I can enjoy everything as before."),
            ),
              RadioListTile<String>(
              value: "I can't enjoy everything as before.",
              groupValue: dnm,
              onChanged: (deger4) {
                setState(() {
                  dnm = deger4;
                  debugPrint("Secilen deger=$deger4");
                });
              },
              title: Text("I can't enjoy everything as before."),
            ),
               RadioListTile<String>(
              value: "I can't really enjoy nothing no longer.",
              groupValue: dnm,
              onChanged: (deger4) {
                setState(() {
                  dnm = deger4;
                  debugPrint("Secilen deger=$deger4");
                });
              },
              title: Text("I can't really enjoy nothing no longer."),
            ),
             RadioListTile<String>(
              value: "Nothing delight to me everything so boring.",
              groupValue: dnm,
              onChanged: (deger4) {
                setState(() {
                  dnm = deger4;
                  debugPrint("Secilen deger=$deger4");
                });
              },
              title: Text("Nothing delight to me everything so boring."),
            ),
            Text("QUESTION-V",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Divider(color: Colors.red,),
            RadioListTile<String>(
              value: "I don't feel guilty.",
              groupValue: dvp,
              onChanged: (deger5) {
                setState(() {
                  dvp = deger5;
                  debugPrint("Secilen deger=$deger5");
                });
              },
              title: Text("I don't feel guilty."),
            ),
            RadioListTile<String>(
              value: "I sometimes don't feel guilty.",
              groupValue: dvp,
              onChanged: (deger5) {
                setState(() {
                  dvp = deger5;
                  debugPrint("Secilen deger=$deger5");
                });
              },
              title: Text("I sometimes don't feel guilty."),
            ),
            RadioListTile<String>(
              value: "Most of the time I don't feel guilty.",
              groupValue: dvp,
              onChanged: (deger5) {
                setState(() {
                  dvp = deger5;
                  debugPrint("Secilen deger=$deger5");
                });
              },
              title: Text("Most of the time I don't feel guilty."),
            ),
            RadioListTile<String>(
              value: "I always feel guilty.",
              groupValue: dvp,
              onChanged: (deger5) {
                setState(() {
                  dvp = deger5;
                  debugPrint("Secilen deger=$deger5");
                });
              },
              title: Text("I always feel guilty."),
            ),
             Text("QUESTION-VI",style: TextStyle(color: Colors.red,fontSize: 20.0),),
             Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I'm not thinking my punished.",
              groupValue: txt,
              onChanged: (deger6) {
                setState(() {
                  txt = deger6;
                  debugPrint("Secilen deger=$deger6");
                });
              },
              title: Text("I'm not thinking my punished."),
            ),
             RadioListTile<String>(
              value: "Sometimes I think I deserve to be punished.",
              groupValue: txt,
              onChanged: (deger6) {
                setState(() {
                  txt = deger6;
                  debugPrint("Secilen deger=$deger6");
                });
              },
              title: Text("Sometimes I think I deserve to be punished."),
            ),
            RadioListTile<String>(
              value: "I am waiting to be punished.",
              groupValue: txt,
              onChanged: (deger6) {
                setState(() {
                  txt = deger6;
                  debugPrint("Secilen deger=$deger6");
                });
              },
              title: Text("I am waiting to be punished."),
            ),
             RadioListTile<String>(
              value: "I feel to be punished.",
              groupValue: txt,
              onChanged: (deger6) {
                setState(() {
                  txt = deger6;
                  debugPrint("Secilen deger=$deger6");
                });
              },
              title: Text("I feel to be punished."),
            ),
            Text("QUESTION-VII",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Divider(color: Colors.red,),
            RadioListTile<String>(
              value: "I am glad of myself",
              groupValue: plm,
              onChanged: (deger7) {
                setState(() {
                  plm = deger7;
                  debugPrint("Secilen deger=$deger7");
                });
              },
              title: Text("I am glad of myself"),
            ),
             RadioListTile<String>(
              value: "I am not glad of myself.",
              groupValue: plm,
              onChanged: (deger7) {
                setState(() {
                  plm = deger7;
                  debugPrint("Secilen deger=$deger7");
                });
              },
              title: Text("I am not glad of myself."),
            ),
             RadioListTile<String>(
              value: "I sometimes don't like myself.",
              groupValue: plm,
              onChanged: (deger7) {
                setState(() {
                  plm = deger7;
                  debugPrint("Secilen deger=$deger7");
                });
              },
              title: Text("I sometimes don't like myself."),
            ),
             RadioListTile<String>(
              value: "I hate myself.",
              groupValue: plm,
              onChanged: (deger7) {
                setState(() {
                  plm = deger7;
                  debugPrint("Secilen deger=$deger7");
                });
              },
              title: Text("I hate myself."),
            ),
             Text("QUESTION-VIII",style: TextStyle(color: Colors.red,fontSize: 20.0),),
             Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I don't think of killing myself.",
              groupValue: ylm,
              onChanged: (deger8) {
                setState(() {
                  ylm = deger8;
                  debugPrint("Secilen deger=$deger8");
                });
              },
              title: Text("I don't think of killing myself."),
            ),
             RadioListTile<String>(
              value: "I sometimes thinking of killing myself but I don't do this.",
              groupValue: ylm,
              onChanged: (deger8) {
                setState(() {
                  ylm = deger8;
                  debugPrint("Secilen deger=$deger8");
                });
              },
              title: Text("I sometimes thinking of killing myself but I don't do this."),
            ),
             RadioListTile<String>(
              value: "I wish I could kill myself.",
              groupValue: ylm,
              onChanged: (deger8) {
                setState(() {
                  ylm = deger8;
                  debugPrint("Secilen deger=$deger8");
                });
              },
              title: Text("I wish I could kill myself."),
            ),
             RadioListTile<String>(
              value: "If a suitable moment I killing myself.",
              groupValue: ylm,
              onChanged: (deger8) {
                setState(() {
                  ylm = deger8;
                  debugPrint("Secilen deger=$deger8");
                });
              },
              title: Text("I don't think of killing myself."),
            ),
            Text("QUESTION-IX",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Divider(color: Colors.red,),
             RadioListTile<String>(
              value: "I can easy decide as before.",
              groupValue: pdf,
              onChanged: (deger9) {
                setState(() {
                  pdf = deger9;
                  debugPrint("Secilen deger=$deger9");
                });
              },
              title: Text("I can easy decide as before."),
            ),
            RadioListTile<String>(
              value: "I am delaying decision making now.",
              groupValue: pdf,
              onChanged: (deger9) {
                setState(() {
                  pdf = deger9;
                  debugPrint("Secilen deger=$deger9");
                });
              },
              title: Text("I am delaying decision making now."),
            ),
            RadioListTile<String>(
              value: "I have a hard time making a decision.",
              groupValue: pdf,
              onChanged: (deger9) {
                setState(() {
                  pdf = deger9;
                  debugPrint("Secilen deger=$deger9");
                });
              },
              title: Text("I have a hard time making a decision."),
            ),
            RadioListTile<String>(
              value: "I can't decide no longer.",
              groupValue: pdf,
              onChanged: (deger9) {
                setState(() {
                  pdf = deger9;
                  debugPrint("Secilen deger=$deger9");
                });
              },
              title: Text("I can't decide no longer."),
            ),
          Text("QUESTION-X",style: TextStyle(color: Colors.red,fontSize: 20.0),),
          Divider(color: Colors.red,),
          RadioListTile<String>(
              value: "I sleeping easy as before.",
              groupValue: ist,
              onChanged: (deger10) {
                setState(() {
                  ist = deger10;
                  debugPrint("Secilen deger=$deger10");
                });
              },
              title: Text("I sleeping easy as before."),
            ),
             RadioListTile<String>(
              value: "I can't falling asleep easily recently.",
              groupValue: ist,
              onChanged: (deger10) {
                setState(() {
                  ist = deger10;
                  debugPrint("Secilen deger=$deger10");
                });
              },
              title: Text("I can't falling asleep easily recently."),
            ),
             RadioListTile<String>(
              value: "I early waking up and I have trouble sleeping again.",
              groupValue: ist,
              onChanged: (deger10) {
                setState(() {
                  ist = deger10;
                  debugPrint("Secilen deger=$deger10");
                });
              },
              title: Text("I early waking up and I have trouble sleeping again."),
            ),
             RadioListTile<String>(
              value: "I waking up very early and I can't sleeping.",
              groupValue: ist,
              onChanged: (deger10) {
                setState(() {
                  ist = deger10;
                  debugPrint("Secilen deger=$deger10");
                });
              },
              title: Text("I waking up very early and I can't sleeping."),
            ),
            RaisedButton(
              color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                    child: Text("SignIn"),
                  )

          ],
        ),
        
        padding: EdgeInsets.all(20),
      ),
      
      

    );
  }
}
