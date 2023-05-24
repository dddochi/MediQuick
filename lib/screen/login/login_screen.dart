import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart'; //파이어베이스

import '../../component/big_logo.dart';
import '../../component/bottom_button.dart';
import '../../component/text_and_textfield.dart';
import '../main_screen/main_screen.dart';
import 'login_screen_controller.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginScreenController loginScreenController =
        Get.put(LoginScreenController());

    final authentication = FirebaseAuth.instance;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Input(
                    idTextController: loginScreenController.idTextController,
                    passwordTextController:
                        loginScreenController.passwordTextController),
                SizedBox(
                  height: 20.0,
                ),
                BottomButton(
                  buttonName: 'LOGIN',
                  onPressed: () async {
                    try {
                      final newUser =
                          await authentication.signInWithEmailAndPassword(
                              email:
                                  loginScreenController.idTextController.text,
                              password: loginScreenController
                                  .passwordTextController.text); //로그인 정보 확인

                      //로그인 성공
                      Get.offAll(() => MainScreen());
                      loginScreenController.onLoginButtonClick();
                      print('upload project to github!');
                    } catch (e) {
                      //로그인 실패시
                      print(e);
                      Get.snackbar('로그인 오류', '아이디 혹은 비밀번호가 올바르지 않습니다.');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Input extends StatelessWidget {
  final TextEditingController idTextController;
  final TextEditingController passwordTextController;

  const _Input(
      {required this.idTextController,
      required this.passwordTextController,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BigLogo(),
            Text(
              'Log In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextAndTextField(
              textString: 'Id',
              isObsecureTextTrue: false,
              textEditingController: idTextController,
            ),
            SizedBox(
              height: 30.0,
            ),
            TextAndTextField(
              textString: 'Password',
              isObsecureTextTrue: true,
              textEditingController: passwordTextController,
            ),
          ],
        ),
      ),
    );
  }
}
