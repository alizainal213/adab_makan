import 'package:flutter/material.dart';

class TampilSebelumMakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adab-Adab Sebelum Makan"),
      ),//AppBar

      body: PageView(
        children: <Widget>[
          _itemTanda("Mencuci tangan hingga bersih"),
          _itemTanda("Berkumur atau mencuci mulut terlebih dahulu"),
          _itemTanda("Membaca basmallah saat akan memulai makan, dan diakhiri dengan membaca hamdalah"),
          _itemTanda("Membaca doa sebelum makan"),
        ],
      ),//PageView
    );//Sccafold
  }
}

_itemTanda(String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(deskripsi,
              style: TextStyle(fontSize: 20.0)),

        ),
      ],
    ),
  );
}