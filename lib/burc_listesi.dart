import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc.dart';
import 'package:flutter_burclar/burs_item.dart';
import 'package:flutter_burclar/model/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {tumBurclar = veriKayaginiHazirla();print(tumBurclar);} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context,index){
          return BurcItem(listelenenBurc: tumBurclar[index]);
        }, itemCount: tumBurclar.length,)),
    );
  }

  List<Burc> veriKayaginiHazirla() {
    List<Burc> gecici = [];

    //boş bi liste oluşturduk sonra onu en aşağıda return ile geriye doğru bir şekilde dönderdik
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.pgn degerini olusturmak icin  ..toLoverCase ile komple küçük harfli yapıyoruz
      //Koc --> koc --> koc1.png
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      // koc --> Koc_buyuk1.png
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);

      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
