import 'package:anipet/screen/community_screen.dart';
import 'package:anipet/screen/hospital_screen.dart';
import 'package:anipet/screen/tip_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
  RxString appBarText = "병원 예약".obs;

  RxList<Widget> pages = RxList();
  RxInt pageIndex = 0.obs;

  @override
  void onInit() {
    pages.add(HospitalScreen());
    pages.add(CommunityScreen());
    pages.add(TipScreen());
    super.onInit();
  }
}
