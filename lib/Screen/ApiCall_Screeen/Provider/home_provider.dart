import 'package:flutter/material.dart';
import 'package:re_exam/Screen/ApiCall_Screeen/Model/home_model.dart';
import 'package:re_exam/Utils/api_helper.dart';

class HomeProvider extends ChangeNotifier
{
  Future<List<HomeModel>> pData()
  async {
    ApiHelper apiHelper = ApiHelper();
    List<HomeModel> listData = await apiHelper.data();
    return listData;
  }
}