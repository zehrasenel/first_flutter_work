import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.orange,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "YUZEH",
            style: TextStyle(fontSize: 24.0, color: Colors.black),
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
        body: Container(
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
              FlatButton(onPressed: (){}, child: Text("flat button", style: TextStyle(fontSize: 24),),), //sadece yazıdan oluşan buton flatbuttondur 
            ],
          ),
        ),
      ),
    ),
  );
}

void uzunMethod() {
  debugPrint("Çok uzun içerikli fonksiyon");
}
