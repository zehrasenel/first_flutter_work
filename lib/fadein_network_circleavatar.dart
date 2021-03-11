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
        body: Column(
          children: <Widget>[
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
                    child: Container(
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(placeholder: "assets/images/tenor.gif", image: "https://images.hdqwalls.com/wallpapers/protection-5k-mr.jpg"),
                          //geç açılan imageler için açılana kadar loading gifi görünecek
                          Text("fadein image")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                              "https://images.hdqwalls.com/wallpapers/protection-5k-mr.jpg"),
                          Text("network image")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                            backgroundColor: Colors.purple,
                            radius: 30,
                            foregroundColor: Colors.orange,
                          ),
                          Text("circle avatar")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                          Image.network(
                              "https://images.hdqwalls.com/wallpapers/protection-5k-mr.jpg"),
                          Text("network image")
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
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                              backgroundColor: Colors.purple,
                              radius: 30,
                              foregroundColor: Colors.orange,
                            ),
                            Text("circle avatar")
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

