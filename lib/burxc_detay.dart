import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() { 
    super.initState();
    appbarRengiBul();
    //_generator = PaletteGenerator.fromImageProvider(AssetImage(Assetname));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //appBar: AppBar(),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + "Burcu ve özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              )),
          ),
          //buarya SingleChildScrollView 'ı koymamız gerekiyor.  ama silvers bizden slivers türünde yapılar bekliyordu.
          //sliver türünde olmayan herhangi bir widget koyamayız. bu yüzden SliverToBoxAdapter 'ı kullanılırız ve onun
          // child'ına istediğimizi koyarız
          SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            child: SingleChildScrollView(
                child: Text(
              widget.secilenBurc.burcDetayi,
              style: Theme.of(context).textTheme.subtitle1,
            )),
          ),
        )
      ],
    ));
  }

  void appbarRengiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.secilenBurc.burcBuyukResim}"));
    appbarRengi = _generator.vibrantColor!.color;
    setState(() {
      
    });
    print(appbarRengi);
  }
}


