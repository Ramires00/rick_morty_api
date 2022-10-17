import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_api/repository/repository.dart';
import 'package:get/get.dart';
import 'package:rick_morty_api/view/view_list_eps.dart';

void main() {
  initRepository();
  runApp(
    GetMaterialApp(
      home: ViewListEps(),
    ),
  );
}

void initRepository() {
  final Dio dio = Get.put(Dio());
  Get.put(RestClient(dio));
}
