import "package:flutter/material.dart";

class ListeKonuAnlatimi extends StatelessWidget {
  //liste için veri kaynağı
  List<int> ListeNumaralari = List.generate(300, (index) => index);
  List<String> ListeAltBaslik =
      List.generate(300, (index) => "Liste Elemanı Alt Başlık $index");
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListeNumaralari.map(
        (e) => Column(
          children: [
            Container(
              child: Card(
                color: Colors.teal.shade100,
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.android),
                    radius: 12,
                  ),
                  title: Text("Liste Eleman Başlık $e"),
                  subtitle: Text(ListeAltBaslik[e]),
                  trailing: Icon(Icons.add_circle),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 0,
              indent: 20,
            ),
          ],
        ),
      ).toList(),
    );
  }
}

/*

*/
