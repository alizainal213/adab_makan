import 'package:flutter/material.dart';

class TampilDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doa Adab Makan"),
      ),//AppBar

      body: PageView(
        children: <Widget>[
          _itemTanda("Doa Sebelum Makan", "بسم الله", "Dengan menyebut nama Allah"),
          _itemTanda("Doa Sesudah Makan", "الْحَمْدُ لِلَّهِ الَّذِى أَطْعَمَنِى هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّى وَلاَ قُوَّةٍ", "Segala puji bagi Allah yang telah memberiku makanan ini, dan merizkikan kepadaku tanpa daya serta kekuatan dariku"),
          _itemTanda("Doa Ketika Lupa Membaca Bismillah", "بِسْمِ اللَّهِ أَوَّلَهُ وَآخِرَهُ", "dengan nama Allah pada awal dan akhirnya")
        ],
      ),//PageView
    );//Sccafold
  }
}

_itemTanda(String judul ,String arab ,String arti) {
  return Container(
    child: ListView(
      children: <Widget>[
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(judul,
              style: TextStyle(fontSize: 28.0)),

        ),//Padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(arab,
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(arti,
            style: TextStyle(fontSize: 23.0),
            textAlign: TextAlign.justify,),
        ),
      ],
    ),
  );
}