import "package:flutter/material.dart";

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
        )
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Container(
              color: Colors.orange.shade200,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("D", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade300,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("A", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade400,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("R", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade500,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("T", style: TextStyle(fontSize: 20),),
            ),
           ],
          ),

         Container(
              color: Colors.orange.shade200,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("D", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade300,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("E", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade400,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("R", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade500,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("S", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade600,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("L", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade700,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("E", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade800,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text("R", style: TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.orange.shade900,
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.all(20.0),
              child: Text(" İ", style: TextStyle(fontSize: 20),),
            ),
           ],
      ),
      ),
    ),
  );
} 
