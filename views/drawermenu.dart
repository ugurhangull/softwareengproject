import 'package:flutter/material.dart';
import 'package:library_app/views/ayarlar.dart';
import 'package:library_app/views/bildirimler.dart';
import 'package:library_app/views/datas.dart';
import 'package:library_app/views/hatabildir.dart';
import 'package:library_app/views/nasilkullanilir.dart';
import 'package:library_app/views/ongoru.dart';
import 'package:library_app/views/opera.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:library_app/views/opera.dart';
import 'package:library_app/views/digital.dart';
import 'package:library_app/views/algorit.dart';
import 'package:library_app/views/comp.dart';


class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (contex) => datas()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => opera()));
        break;
        case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => algo()));
        break;
        case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => dig()));
        break;
        case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => com()));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Ayarlar()));
        break;
      
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HataBildir()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 25, 122, 135),
        child: ListView(
          children: [
            buildHeader(
                name: "Uğurhan Gül", eposta: "190254032@ogr.alanya.edu.tr"),
            SizedBox(
              height: 10,
            ),
          
             buildMenuItem(
                text: "Data Structures",
                icon: Icons.menu_book,
                onClicked: () => selectedItem(context, 0)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),
            buildMenuItem(
                text: "Operating Systems",
                icon: Icons.menu_book,
                onClicked: () => selectedItem(context, 1)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),
            buildMenuItem(
                text: "Algorithm Analysis",
                icon: Icons.menu_book,
                onClicked: () => selectedItem(context, 2)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),buildMenuItem(
                text: "Digital Logic Design",
                icon: Icons.menu_book,
                onClicked: () => selectedItem(context, 3)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),buildMenuItem(
                text: "Computer Architecture",
                icon: Icons.menu_book,
                onClicked: () => selectedItem(context, 4)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),





            buildMenuItem(
                text: "Ayarlar",
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 5)),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),
            // buildMenuItem(
            //   text: "Bildirimler",
            //   icon: Icons.notifications,
            //   onClicked: () => selectedItem(context, 3),
            // ),
            Divider(
              height: 1,
              color: Colors.white,
              thickness: 1,
            ),
            buildMenuItem(
                text: "Hata Bildir",
                icon: Icons.error_outline,
                onClicked: () => selectedItem(context, 6)),
            Divider(
              height: 1,
              color: Colors.white,
              thickness: 1,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
