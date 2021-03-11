import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp",
      home: MyHomePage(
        title: "My Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomePage({this.title}){
    debugPrint("My Home Page");
  }
  @override
  State<StatefulWidget> createState() {
    debugPrint("My Home Page");
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState(){
    debugPrint("My Home Page");
  }
    @override
    Widget build(BuildContext context) {
      debugPrint("My Home Page");
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              sayacDegeriniArtir();
              debugPrint("My Home Page");
            });
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Butona Tıklama Sayısı"),
              Text(
                "${widget.sayac}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
      ),
      );
    }

  void sayacDegeriniArtir() {
    widget.sayac++;
    debugPrint("Sayaç Değeri: $widget.sayac");
  }
}
