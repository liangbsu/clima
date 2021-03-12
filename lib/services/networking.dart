import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final url;

  Future getData() async {
    http.Response response = await http.get(url);
    var decodeData = jsonDecode(response.body);
    return decodeData;
  }
}
