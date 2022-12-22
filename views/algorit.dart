import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class algo extends StatefulWidget {
  const algo({Key? key}) : super(key: key);

  @override
  _algo createState() => _algo();
}

class _algo extends State<algo> {
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
          "Algoritma Analizi",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://www.tutorialspoint.com/design_and_analysis_of_algorithms/analysis_of_algorithms.htm",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}