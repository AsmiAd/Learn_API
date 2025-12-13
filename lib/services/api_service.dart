import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_api/models/single_post_with_model.dart';

class ApiServices {
  // With Model
  Future<SinglePostWithModel?> getSinglePostWithModel() async {
    try {
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
      );
      if (response.statusCode == 200) {
        SinglePostWithModel model = SinglePostWithModel.fromJson(
          json.decode(response.body),
        );
        return model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
