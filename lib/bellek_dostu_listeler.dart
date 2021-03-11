import "package:flutter/material.dart";

class EtkinListeOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20, itemBuilder: (context, index) => Text("Eleman $index"));
  }
}
