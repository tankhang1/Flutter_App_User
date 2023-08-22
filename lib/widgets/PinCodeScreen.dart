import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/PinCodeKeyBoard.dart';
import 'package:flutter_app_user/components/SecurityVerficationInput.dart';
import 'package:flutter_app_user/util/globalStyle.dart';
import 'package:go_router/go_router.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PinCodeScreen();
  }
}

class _PinCodeScreen extends State<PinCodeScreen> {
  List<String> listPinCode = [];
  void addListPinCode(String pinCode) {
    setState(() {
      if (listPinCode.length < 6) {
        listPinCode.add(pinCode);
      }
    });
  }

  void removeListPinCode() {
    setState(() {
      if (listPinCode.isNotEmpty) {
        listPinCode.removeLast();
      }
    });
  }

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
            const SizedBox(
              height: 50,
            ),
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
            const SizedBox(
              height: 20,
            ),
            SecurityVerificationInput(listSecurityCode: listPinCode),
            const SizedBox(
              height: 50,
            ),
            PinCodeKeyBoard(
                addListPinCode: addListPinCode,
                removeListPinCode: removeListPinCode),
          ],
        ),
      )),
    );
  }
}
