import 'package:anipet/const/colors.dart';
import 'package:anipet/screen/hospital_reservation/hospital_reservation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_screen/main_screen.dart';

class HospitalReservationScreen extends StatelessWidget {
  const HospitalReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HospitalReservationController hospitalReservationController =
        Get.put(HospitalReservationController());
    return Scaffold(
      appBar: AppBar(
        title: Text('병원 예약'),
        backgroundColor: MAIN_BLUE_GREEN_COLOR,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                  textString: '예약 병원명',
                  isObsecureTextTrue: false,
                  textEditingController:
                      hospitalReservationController.hospitalNameTextController),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '예약 날짜',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.reservationDayTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '예약 시간',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.reservationTimeTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '환자 이름',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.nameTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '성별',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.genderTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '나이',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.ageTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '전화번호',
                isObsecureTextTrue: false,
                textEditingController:
                hospitalReservationController.telTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              _TextAndTextField(
                textString: '병원 방문 사유',
                isObsecureTextTrue: false,
                textEditingController:
                    hospitalReservationController.visitingReasonTextController,
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  hospitalReservationController
                      .onHospitalReservationButtonClicked();
                  Get.to(() => MainScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text('병원 예약'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextAndTextField extends StatelessWidget {
  final String textString;
  final bool isObsecureTextTrue;
  final TextEditingController textEditingController;

  const _TextAndTextField({
    required this.textString,
    required this.isObsecureTextTrue,
    required this.textEditingController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );
    final textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      filled: true,
      fillColor: Colors.white,
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          SizedBox(
            width: 88.0,
            child: Text(
              textString,
              style: textStyle,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: SizedBox(
              height: 33.0,
              child: TextField(
                obscureText: isObsecureTextTrue,
                decoration: textFieldDecoration,
                controller: textEditingController,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          )
        ],
      ),
    );
  }
}
