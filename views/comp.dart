import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class com extends StatefulWidget {
  const com({Key? key}) : super(key: key);

  @override
  _com createState() => _com();
}

class _com extends State<com> {
  final _formKey = GlobalKey<FormState>();

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
          "Computer Architecture",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://www.tutorialspoint.com/what-is-computer-architecture",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}