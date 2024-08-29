import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  String url;
  Future<dynamic> getData() async {
    try {
      http.Response res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        String data = res.body;
        return jsonDecode(data);
        // print(decodedData['main']['temp']);
        // print(data);
      } else {
        print(res.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
