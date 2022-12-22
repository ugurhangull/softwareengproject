// import 'dart:ffi';

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:library_app/data/data.dart';
import 'package:library_app/data/get_data.dart';
import 'package:library_app/views/destek.dart';
import 'package:library_app/views/drawermenu.dart';
import 'package:library_app/views/hatabildir.dart';
import 'package:library_app/views/ocrr.dart';
import 'package:library_app/views/ongoru.dart';
import 'package:flutter/src/material/colors.dart';



import 'package:library_app/views/webwiew.dart';
import 'package:library_app/views/timer.dart';
import 'package:library_app/views/music.dart';
import 'package:library_app/views/motivation.dart';
import 'package:library_app/views/destek.dart';




import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:library_app/views/load.dart';

// Future<KutuphaneKalabaligi> apiCall() async {
//   final response = await http.get(
//     Uri.parse(
//         'https://api.thingspeak.com/channels/1698733/fields/1.json?api_key=W6Y5S93JY0R97AKR&results=1'),
//   );
//   if (response.statusCode == 200) {
//     return KutuphaneKalabaligi.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load');
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DataService _data;
  @override
  void initState() {
    super.initState();
    setState(() {
      _data = DataService();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.cyan),
        title: const Text(
          "Ana Sayfa",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:

          // FutureBuilder<KutuphaneKalabaligi>(
          Container(
        // height: 300,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         alignment: Alignment.topCenter,
        //         image: AssetImage('assets/Unknown.jpeg'))),
        child: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: Center(
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         const Icon(
            //           Icons.people_alt,
            //           size: 70,
            //           color: Colors.blueAccent,
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         // FutureBuilder<KutuphaneKalabaligi>(
            //         //   future: apiCall(),
            //         //   // ignore: missing_return
            //         //   builder: (context, snapshot) {
            //         //     if (snapshot.hasData) {
            //         //       return Center(
            //         //           child: Text(
            //         //         // "Kişi Sayısı: ${snapshot.data!.feeds.last.field1} \n"

            //         //         // +"Çıkan Kişi Sayısı: ${snapshot.data!.feeds.last.field1} \n"
            //         //         ,
            //         //         style: const TextStyle(
            //         //             fontWeight: FontWeight.bold,
            //         //             fontSize: 14,
            //         //             color: Colors.cyan),
            //         //       ));
            //         //     } else {
            //         //       return const Center(
            //         //           child: CircularProgressIndicator());
            //         //     }
            //         //   },
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),


Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.center_focus_strong_outlined ,
                          size: 70,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ocr()));
                            },
                            child: const Center(
                              child: Text("Metin Tanıma",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),









            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.article_outlined,
                          size: 70,
                          color: Colors.greenAccent,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const webwiew()));
                            },
                            child: const Center(
                              child: Text("Duyurular",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.addchart_rounded,
                          size: 70,
                          color: Colors.greenAccent,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TODO()));
                            },
                            child: const Center(
                              child: Text("ToDo List",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.home,
                          size: 80,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TimerReel()));
                            },
                            child: const Center(
                              child: Text("Sayaç",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.headphones,
                          size: 80,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => music()));
                            },
                            child: const Center(
                              child: Text("Müzik",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),



            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.done_all_sharp,
                          size: 80,
                          color: Colors.greenAccent,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => mot()));
                            },
                            child: const Center(
                              child: Text("Motivasyon",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: InkWell(
            //     onTap: () {},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const <Widget>[
            //           Icon(
            //             Icons.home,
            //             size: 80,
            //             color: Colors.blueAccent,
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Text("Haftalık Tahmin",
            //               style: TextStyle(
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.cyan)),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.phone_in_talk,
                          size: 70,
                          color: Colors.greenAccent,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Destek()));
                            },
                            child: const Center(
                              child: Text("Bize Ulaşın",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),



              Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Center(
                        child: Icon(
                        Icons.book,
                        size: 70,
                        color: Colors.blueAccent,
                      ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Destek()));
                            },
                            child: const Center(
                              child: Text("Kullanma Kılavuzu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.underline,
                                      color: Colors.cyan)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: InkWell(
            //     onTap: () {},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const <Widget>[
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Icon(
            //             Icons.book,
            //             size: 70,
            //             color: Colors.blueAccent,
            //           ),
            //           SizedBox(
            //             height: 13,
            //           ),
            //           Center(
            //             child: Text(
            //               "Nasıl Kullanılır",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 14,
            //                   color: Colors.cyan),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: InkWell(
            //     onTap: () {},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const <Widget>[
            //           Icon(
            //             Icons.home,
            //             size: 70,
            //             color: Colors.blueAccent,
            //           ),
            //           Text("Home", style: TextStyle(fontSize: 17.0)),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: InkWell(
            //     onTap: () {},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const <Widget>[
            //           Icon(
            //             Icons.home,
            //             size: 70,
            //             color: Colors.blueAccent,
            //           ),
            //           Text("Home", style: TextStyle(fontSize: 17.0)),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   margin: const EdgeInsets.all(8),
            //   child: InkWell(
            //     onTap: () {},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const <Widget>[
            //           Icon(
            //             Icons.home,
            //             size: 70,
            //             color: Colors.blueAccent,
            //           ),
            //           Text("Home", style: TextStyle(fontSize: 17.0)),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

















// FutureBuilder<KutuphaneKalabaligi>(

//         future: apiCall(),
//         // ignore: missing_return
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return Container(
//                 child: Center(
//                     child: Text(
//               "Giren Kişi Sayısı: ${snapshot.data!.feeds.first.field1} \n" +
//                   "Çıkan Kişi Sayısı: ${snapshot.data!.feeds.last.field1} \n",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                   color: Colors.cyan),
//             )));
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },


//       ),
   




























