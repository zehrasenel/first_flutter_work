import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'resim_button.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
        body: ResimveButon()
      ),
    );
  }
  
}