import 'dart:convert';

import 'package:quiz_app/models/question_model.dart';
import 'package:http/http.dart' as http;

class ApiService {


  Future<List<Question>> fetchQuestion() async {
    final response = await http.get(Uri.parse('http://23'), headers: {
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*",
    });

    if (response.statusCode == 200) {
      var resp = json.decode(response.body);
      var data = resp.cast<String, dynamic>();
      return data.map<Question>((json) => Question.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
