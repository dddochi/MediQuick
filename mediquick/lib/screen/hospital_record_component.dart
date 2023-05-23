import 'package:flutter/material.dart';

class HospitalRecordComponent extends StatelessWidget {
  final String hospitalName;
  final String reservationDay;
  final String reservationTime;
  final String petName;
  final String breed;
  final String age;
  final String visitingReason;

  const HospitalRecordComponent({
    required this.hospitalName,
    required this.reservationDay,
    required this.reservationTime,
    required this.petName,
    required this.breed,
    required this.age,
    required this.visitingReason,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle categoryStyle = TextStyle(
      fontSize: 16.5,
    );
    final double categoryWidth = 100;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  hospitalName, //병원 이름
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  reservationDay, //예약 날짜
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  reservationTime, //예약 시간
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: categoryWidth,
                  child: Text(
                    '동물 이름', //동물 이름
                  ),
                ),
                Text(petName),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  width: categoryWidth,
                  child: Text(
                    '종',
                  ),
                ),
                Text(breed),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  width: categoryWidth,
                  child: Text(
                    '나이',
                  ),
                ),
                Text(age),
                Text('세'),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  width: categoryWidth,
                  child: Text(
                    '병원 방문 사유', //병원 방문사유
                  ),
                ),
                Text(visitingReason),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
