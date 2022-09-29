import 'dart:convert';

import 'package:http/http.dart' as http;

class Fetchdata {
  Future readRefferal() async {
    String baseUrl = "https://api.kawalcorona.com/indonesia";
    var response =
        await http.get(baseUrl, headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      String positif = jsonData['positif'];
      String sembuh = jsonData['sembuh'];
      String meninggal = jsonData['meninggal'];
      print(positif);
    }
  }
}
