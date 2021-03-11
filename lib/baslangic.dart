import "package:flutter/material.dart";

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false, //kenardaki debug yazısı
      theme: ThemeData(
          primarySwatch: Colors.cyan, //yukardaki kutunun rengi
          accentColor: Colors.orange //butonun rengi
          ),
      home: new Scaffold(
          appBar: AppBar(
            title: Text(
              //kutunun içindeki başlık ve fontu
              "Flutter Dersleri",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            //butona tıklandığında
            onPressed: () {
              debugPrint("FAB tıklandı");
            },
            child: Icon(
                //butonun içindeki imge, fontu ve rengi
                Icons.access_alarms,
                size: 24.0,
                color: Colors.white),
          ),
          body: Container(      //ekrana yazılacak yazı ve arkası küçük mor
          color: Colors.purple,
          child: Center(
            child: Text(
            "FLUTTER",
            textAlign: TextAlign.center,
            ),
          ),
        ),
        /* body: Center(           //ekrana yazılacak yazı ve arkası tamamen mor
          child: Container(
            color: Colors.purple,
            child: Text(
            "FLUTTER",
            textAlign: TextAlign.center,
            ),
      body: Container(   //ekrana bir kutucuk oluşturdu ve içinde flutter is the best yazıyor
        height: 200,
        width: 200,
        child: Text(
          "flutter is the best",
          textAlign: TextAlign.center,    //center dediğimde yazıyı kutunun üstünde ortaladı
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        color: Colors.green.shade200,
       alignment: Alignment.center,      //yazıyı kutununun tam ortasına yazdı  
      ), 
      body: Container(            //ekranın en koydu ve yeşille sarmaladı
        color: Colors.green,
        child: Text("Flutter", style: TextStyle(fontSize: 24)),
      ),        
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            alignment: Alignment(1, 0),
            color: Colors.green,
            child: Text("Flutter", style: TextStyle(fontSize: 24)),
             // margin: EdgeInsets.(20.0), ==> yeşil olan kutunun kenarlarından 20 br boşluk bırakılır
             // padding: EdgeInsets.all(30.0), ==> kutunun değil bu sefer yazının telefon keanrlaeına uzaklığı
          ),
        ),
     body: Container(
          color: Colors.red,
          child: Row(        //children ile birkaç icon girilir. row yan yana calumn alt alta sıralar
            mainAxisSize: MainAxisSize.max, //max ikonların olduğu tüm saır veya sütunu kaplarken min olursa sadece kendi kadar kaplar
            mainAxisAlignment: MainAxisAlignment.center,   //ikonlar olduğu satır veya süyunda ortalanır endde sağdan sola startta soldan sağa    
            children: <Widget>[
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.yellow,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.purple,
              ),
            ],
          ),
        ),
          body: Container(
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(               //expanded tüm ikonları o satıra eşit şekilde sığdırıp sıkıştırır
                  child: Container(
                    child: Icon(
                      Icons.add_circle,
                      size: 64,
                      color: Colors.yellow,
                    ),
                    color: Colors.red.shade200,
                  ),*/
                ),
            ),
  );
}
