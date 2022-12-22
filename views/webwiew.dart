import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webwiew extends StatefulWidget {
  const webwiew({Key? key}) : super(key: key);

  @override
  _webwiew createState() => _webwiew();
}

class _webwiew extends State<webwiew> {
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
          "Duyurular",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://kddb.alanya.edu.tr/duyuru/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
