import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future<void> getData() async {
    http.Response response = await http.get("$url");
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      var weatherData = jsonDecode(data);
      return weatherData;
    } else {
      print(response);
    }
  }
}
