import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddReviewController extends GetxController {
  Dio dio = Dio();

  //picture

  TextEditingController titleTextController = TextEditingController();

  TextEditingController contentTextController = TextEditingController();


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void onHospitalRegisterButtonClick() {
    print(titleTextController.text);
    print(contentTextController.text);

    dio.post("http://서버주소", data: {
      "title": titleTextController.text,
      "content": contentTextController.text,
    });
  }
}
