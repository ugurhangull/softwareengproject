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
          "Kullanma Kılavuzu",
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
                '\n'),
          ],
        ),
      ),
    );
  }
}
