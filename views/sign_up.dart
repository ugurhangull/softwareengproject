import 'package:flutter/material.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  late String stundentnumber;
  late String nameandsurname, password, phonenumber, department;
  late String email;
  late String facultyvalue = "İktisadi, İdari ve Sosyal Bilimler Fakültesi";
  late String classvalue = "1";
  List<String> faculty = [
    "İktisadi, İdari ve Sosyal Bilimler Fakültesi",
    "Rafet Kayış Mühendislik Fakültesi",
    "Eğitim Fakültesi",
    "Tıp Fakültesi",
    "Diş Hekimliği Fakültesi",
    "Sağlık Bilimleri Fakültesi",
    "Spor Bilimleri Fakültesi",
    "Turizm Fakültesi",
    "Sanat, Tasarım ve Mimarlık Fakültesi"
  ];
  List<String> classlist = ["Hazırlık", "1", "2", "3", "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FloatingActionButton(
          elevation: 0,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SignIn())),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.cyan,
          ),
          backgroundColor: Colors.white,
        ),
        elevation: 3,
        backgroundColor: Colors.white,
        title: const Text(
          "Kütüphane",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(6),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                const Spacer(),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Ad",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Adınızı Giriniz" : null;
                  },
                  onChanged: (val) {
                    nameandsurname = val;
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Adınızı Giriniz"),
                ),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Öğrenci Numarası",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Öğrenci Numaranızı Giriniz" : null;
                  },
                  onChanged: (value) {
                    stundentnumber = value;
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Öğrenci Numarasınızı Giriniz"),
                ),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Fakülte",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                    value: facultyvalue,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    onChanged: (String? value) {
                      setState(() {
                        facultyvalue = value!;
                      });
                    },
                    items: faculty.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Bölüm",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Bölümünüzü Giriniz" : null;
                  },
                  onChanged: (val) {
                    department = val;
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Bölümünüzü Giriniz"),
                ),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Sınıf",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                    value: classvalue,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    onChanged: (String? value) {
                      setState(() {
                        classvalue = value!;
                      });
                    },
                    items: classlist.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "E-posta",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Bölümünüzü Giriniz" : null;
                  },
                  onChanged: (val) {
                    department = val;
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "E-postanızı Giriniz"),
                ),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Şifre",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Şirenizi Giriniz" : null;
                  },
                  onChanged: (val) {
                    department = val;
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Şifrenizi Giriniz"),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  child: button(context: context, label: "Kayıt Ol"),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
