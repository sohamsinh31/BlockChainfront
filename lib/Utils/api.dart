import 'dart:convert';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:hackathonui/Utils/constants.dart';
import 'package:http/http.dart' as http;

import '../Pages/Data/models.dart';

class MyData {
  static Future<bool> getData() async {
    Map<String, String> body = {
      "version": " draft",
      "token": "vYT8wvh1jQ3gVomAOXgRrAtt"
    };
    final uri = Uri.https(Constants.story_block_api, '/v2/cdn/stories/', body);
    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json'
    };
    final response = await http.get(
      uri,
      headers: headers,
    );
    var data_json = json.decode(response.body);
    var data_json_string = json.encode(data_json);
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    bool nswitch1 = jsonData['stories'][0]['content']['nswitch1'];
    //print(nswitch1);
    return nswitch1;
  }
    static Future<bool> getSwitches() async {
    Map<String, String> body = {
      "version": " draft",
      "token": "vYT8wvh1jQ3gVomAOXgRrAtt"
    };
    final uri = Uri.https(Constants.story_block_api, '/v2/cdn/stories/', body);
    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json'
    };
    final response = await http.get(
      uri,
      headers: headers,
    );
    var data_json = json.decode(response.body);
    var data_json_string = json.encode(data_json);
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    bool nswitch1 = jsonData['stories'][0]['content']['nswitch2'];
    //print(nswitch1);
    return nswitch1;
  }

  static void makeGetRequestWithBody() async {
    Map<String, String> body = {
      "data": "value1",
    };

    final uri = Uri.http(Constants.host_api, '/api/core/blocks', body);
    final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
    final response = await http.get(uri, headers: headers);

    // var response = await http.get(
    //   Constants.host_api + "api/core/blocks" as Uri,
    //   headers: {"Content-Type": "application/json"},
    //   quer: json.encode(body),
    // );

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print("Request failed with status code: ${response.statusCode}");
    }
  }
}
