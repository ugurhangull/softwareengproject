import 'package:flutter/material.dart';
import 'package:library_app/views/drawermenu.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/widgets/widgets.dart';

class HataBildir extends StatefulWidget {
  const HataBildir({Key? key}) : super(key: key);

  @override
  _HataBildirState createState() => _HataBildirState();
}

class _HataBildirState extends State<HataBildir> {
  late String email, password;
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
          "Hata Bildir",
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

            TextFormField(
              maxLength: 200,
              validator: (value) {
                return value!.isEmpty ? "Adınızı giriniz" : null;
              },
              decoration: const InputDecoration(
                labelText: " Adınızı giriniz",
                contentPadding: EdgeInsets.all(16),
                border: OutlineInputBorder(borderSide: BorderSide(width: 50)),
              ),
            ),
            const SizedBox(height: 6),

            TextFormField(
              maxLength: 200,
              validator: (value) {
                return value!.isEmpty ? "E-postanızı Giriniz" : null;
              },
              decoration: const InputDecoration(
                labelText: " E-posta adresinizi giriniz",
                contentPadding: EdgeInsets.all(16),
                border: OutlineInputBorder(borderSide: BorderSide(width: 50)),
              ),
            ),
            const SizedBox(height: 6),

            TextFormField(
              maxLength: 200,
              validator: (value) {
                return value!.isEmpty ? "Hatayı giriniz" : null;
              },
              decoration: const InputDecoration(
                labelText: " Hatayı giriniz",
                contentPadding: EdgeInsets.all(100),
                border: OutlineInputBorder(borderSide: BorderSide(width: 50)),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HataBildir()));
              },
              child: button(context: context, label: "Gönder"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
