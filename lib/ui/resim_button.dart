import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class ResimveButon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
          Text(
            "Resim ve Buton Türleri",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          IntrinsicHeight(
            //yine başka bir ekrana geçildiğinde imagesların boyut farklılıklarını ortadan kaldırıyor
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  //farklı boyutta tablet gibi cihazlara geçildiğinde görüntünün kötü olmaması için
                  child: Container(
                    margin: EdgeInsets.all(4.0),
                    color: Colors.red.shade200,
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/indir.jpg"),
                        Text("assest image")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4.0),
                    color: Colors.red.shade200,
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlutterLogo(
                          size: 60,
                          style: FlutterLogoStyle.horizontal,
                          textColor: Colors.cyan,
                        ),
                        Text("flutter logo")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(4.0),
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              child: Placeholder(
                                  color: Colors.red, strokeWidth: 2.0)),
                          Text("placeholder")
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  //tıklamalı buton
                  child: Text("Zehra Şenel"),
                  color: Colors.orange,
                  onPressed: () => debugPrint("fat arrow"),
                ),
                RaisedButton(
                  child: Text("Zehra Şenel"),
                  elevation: 12,
                  textColor: Colors.yellow,
                  color: Colors.pink,
                  onPressed: () {
                    debugPrint("normal");
                    debugPrint("ikinci satır");
                  },
                ),
                RaisedButton(
                  child: Text("Zehra Şenel"),
                  elevation: 12,
                  textColor: Colors.purple,
                  color: Colors.cyan,
                  onPressed: () {
                    uzunMethod();
                  },
                ),
                RaisedButton(
                  child: Text("Zehra Şenel"),
                  elevation: 12,
                  textColor: Colors.indigo,
                  color: Colors.lightGreen,
                  onPressed: uzunMethod,
                ),
                IconButton(
                    icon: Icon(Icons.add_circle_outline, size: 32),
                    onPressed: () {}),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "flat button",
                    style: TextStyle(fontSize: 24),
                  ),
                ), //sadece yazıdan oluşan buton flatbuttondur
              ],
            ),
          ),
        ]);
  }
  
}
void uzunMethod() {
  debugPrint("Çok uzun içerikli fonksiyon");
}