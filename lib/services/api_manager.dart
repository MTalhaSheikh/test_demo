import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:test_demo/models/api_data_model.dart';

class ApiManager {

  Future<ApiDataResponse> getApiData() async {
    const apiUrl =
        'https://teletraan.co/api/service-provider-profile?pagination=true&user_detail=true&is_approved=approved&filter_by_top_providers=true&filter_by_service=drain-repair&zip=10501&from_explore=true';
    late ApiDataResponse dataModel;

    try {
      http.Response response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        Map<String, dynamic> jsonMap = jsonDecode(jsonString);
        dataModel = ApiDataResponse.fromJson(jsonMap);
      }
    } on Exception {
      debugPrint("Failed to load data");
    }
    return dataModel;
  }
}
