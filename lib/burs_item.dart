import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc.dart';
import 'package:flutter_burclar/burxc_detay.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextstyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResmi,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextstyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextstyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
