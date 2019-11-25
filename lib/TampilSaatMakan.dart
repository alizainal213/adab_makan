import 'package:flutter/material.dart';

class TampilSaatMakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adab-Adab Saat Makan"),
      ),//AppBar

      body: PageView(
        children: <Widget>[
          _itemTanda("Makan dan minum harus dengan posisi duduk"),
          _itemTanda("Tidak berbicara saat dengan makan"),
          _itemTanda("Menggunakan tangan kanan saat sedang makan"),
          _itemTanda("Tenang dan tidak tergesa - gesa saat makan, dan makanan tidak berceceran"),
          _itemTanda("Tidak makan sambil berjalan"),
          _itemTanda("Makan secukupnya dan tidak berlebihan"),
          _itemTanda("Tidak membicarakan hal - hal buruk saat makan"),
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