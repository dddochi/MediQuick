import 'package:anipet/screen/hospital_record_component.dart';
import 'package:flutter/material.dart';

class HospitalRecordList extends StatelessWidget {
  const HospitalRecordList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HospitalRecordComponent(
            hospitalName: '정병원',
            reservationDay: '2023.05.03',
            reservationTime: '13:30',
            name: '이우주',
            gender: '남성',
            age: '3',
            visitingReason: '차사고',
          ),
        ],
      ),
    );
  }
}
