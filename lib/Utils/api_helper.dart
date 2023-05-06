import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:re_exam/Screen/ApiCall_Screeen/Model/home_model.dart';
class ApiHelper
{
  Future data()
  async {
    String link = "https://trains.p.rapidapi.com/";
    Uri uri = Uri.parse(link);
    var json = jsonEncode(uri);
    var respon = await http.post(uri,headers: {'content-type': 'application/json',
      'X-RapidAPI-Key': '0879344c6dmsha1627f90fd35f77p1ad740jsne6f395c3cb33',
      'X-RapidAPI-Host': 'trains.p.rapidapi.com'},body: json);
    print(json);
    return json.map((e)=>HomeModel.fromJson(e)).toList();


  }
}