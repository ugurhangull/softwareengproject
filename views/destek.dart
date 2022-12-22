import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';

class Destek extends StatefulWidget {
  const Destek({Key? key}) : super(key: key);

  @override
  _DestekState createState() => _DestekState();
}

class _DestekState extends State<Destek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FloatingActionButton(
          elevation: 0,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.cyan,
          ),
          backgroundColor: Colors.white,
        ),
        elevation: 3,
        backgroundColor: Colors.white,
        title: const Text(
          "Bize Ulaşın",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            // const Spacer(),
            const SizedBox(height: 30),

            Text(
                '\nİletişim\n\nAdres\n\nDSM Grup Danışmanlık İletişim ve Satış Ticaret A.Ş. Maslak Mahallesi Büyükdere Caddesi (Spine Plaza) No:243 İç Kapı No:19 Sarıyer/İstanbul\n\nTel: 0 212 331 0 200\nFax: 0 212 332 18 93\nMaslak V.D. 313 055 7669\nTicaret Sicil No: 711896\nMERSİS Numarası: 0313055766900016\nKep Adresi: dsm@hs02.kep.tr\n\n\nÜyesi olduğumuz İstanbul Ticaret Odası’nın üyeleri için geçerli davranış kurallarına www.ito.org.tr adresinden ulaşılabilirsiniz.'),
          ],
        ),
      ),
    );
  }
}
