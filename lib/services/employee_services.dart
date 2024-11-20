import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class EmployeeServices {
  String baseUrl = "https://reqres.in/api/";

  getData() async {
    try {
      var response = await http.get(Uri.parse('${baseUrl}users?page=2'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        log(data);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
