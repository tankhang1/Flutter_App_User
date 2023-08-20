import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/OTPVerificationInput.dart';
import 'package:flutter_app_user/components/PinCodeKeyBoard.dart';
import 'package:flutter_app_user/util/globalStyle.dart';
import 'package:go_router/go_router.dart';

final listOTP = [1, 2, 3, 4, 5, 6].map((e) => TextEditingController());

class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  context.pop(true);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 36,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Bảo Mật',
              style: TextStyle(fontSize: 36),
            ),
            const Text(
              'Tạo một mã PIN giúp bảo vệ tài khoản của bạn khỏi bị truy cập trái phép',
              style: TextStyle(color: Colors.black),
            ),
            OTPVerificationInput(listOTP: listOTP),
            const SizedBox(
              height: 10,
            ),
            const PinCodeKeyBoard(),
          ],
        ),
      )),
    );
  }
}
