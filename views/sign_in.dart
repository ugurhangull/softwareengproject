import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_up.dart';
import 'package:library_app/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        title: const Text(
          "Kütüphane",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            const Spacer(),
            TextFormField(
              validator: (value) {
                return value!.isEmpty ? "E-postanızı Giriniz" : null;
              },
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  hintText: "E-posta"),
            ),
            const SizedBox(height: 6),
            TextFormField(
              validator: (value) {
                return value!.isEmpty ? "Şifrenizi Giriniz" : null;
              },
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  hintText: "Şifre"),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: button(context: context, label: "Oturum Aç"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hesabınız Yoksa ",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: const Text("Kayıt Ol",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
