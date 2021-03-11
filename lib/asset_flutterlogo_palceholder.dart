import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB tıklandı");
          },
          child: Icon(
            Icons.access_alarms,
            size: 24,
            color: Colors.white,
          ),
        ),
        body: Column(children: <Widget>[
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
        ]),
      ),
    ),
  );
}
