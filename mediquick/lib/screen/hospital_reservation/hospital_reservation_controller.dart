import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalReservationController extends GetxController {
  Dio dio = Dio();
  TextEditingController hospitalNameTextController = TextEditingController();
  TextEditingController reservationDayTextController = TextEditingController();
  TextEditingController reservationTimeTextController = TextEditingController();

  TextEditingController nameTextController = TextEditingController();
  TextEditingController genderTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController telTextController = TextEditingController();
  TextEditingController visitingReasonTextController = TextEditingController();

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

  void onHospitalReservationButtonClicked() {
    print(hospitalNameTextController.text);
    print(reservationDayTextController);
    print(reservationTimeTextController);
    print(nameTextController);
    print(genderTextController);
    print(ageTextController);
    print(telTextController);
    print(visitingReasonTextController);

    dio.post("http://서버주소", data: {
      'hospitalName': hospitalNameTextController.text,
      'reservationDay': reservationDayTextController.text,
      'reservationTime': reservationTimeTextController.text,
      'name': nameTextController.text,
      'gender': genderTextController.text,
      'age': ageTextController.text,
      'tel': telTextController.text,
      'visitingReason': visitingReasonTextController.text,
    });
  }
}
