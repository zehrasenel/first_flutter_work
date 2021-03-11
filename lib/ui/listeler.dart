import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/liste.dart';
import 'liste.dart';
void main() {
  runApp(
    MaterialApp(
      title: "Flutter Dersler",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(title: Text("Listeler", style: TextStyle(color: Colors.white,),), ),
        body: ListeKonuAnlatimi(),
    ),
  ),
  );
}
