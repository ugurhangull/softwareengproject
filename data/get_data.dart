import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:library_app/data/data.dart';

class DataService {
  Future<List<ArdunioData>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://api.thingspeak.com/channels/1647901/feeds.json?results=2'));
    if (response.statusCode == 200) {
      Iterable datas = json.decode(response.body);
      return datas.map((datas) => ArdunioData.fromJson(datas)).toList();
    } else {
      throw Exception("Data error");
    }
  }
}
