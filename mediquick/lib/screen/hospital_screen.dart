import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/geolocation.dart';
import '../component/hospital_component.dart';
import '../component/top_search_bar.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        TopSearchBar(),
        Geolocation(),
        SizedBox(
          height: 15.0,
        ),
        HospitalList(),
      ],
    );
  }
}

class HospitalList extends StatelessWidget {
  const HospitalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HospitalComponent(
            hospitalName: '휴 동물의료센터',
            hospitalAddress: '경기도 용인시 성남시 수정구 성산대로 309 2층'),
        SizedBox(
          height: 15.0,
        ),
        HospitalComponent(
            hospitalName: '24시 폴동물병원',
            hospitalAddress: '경기 성남시 분당구 성남대로 385 102호 '),
      ],
    );
  }
}
