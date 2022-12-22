import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class dig extends StatefulWidget {
  const dig({Key? key}) : super(key: key);

  @override
  _dig createState() => _dig();
}

class _dig extends State<dig> {
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
          "Digital Logic",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://www.geeksforgeeks.org/digital-electronics-logic-design-tutorials/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}