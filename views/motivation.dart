import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class mot extends StatefulWidget {
  const mot({Key? key}) : super(key: key);

  @override
  _mot createState() => _mot();
}

class _mot extends State<mot> {
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
          "Motivasyon",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://www.greatday.com",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
