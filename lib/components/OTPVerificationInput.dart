import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_user/util/globalStyle.dart';

class OTPVerificationInput extends StatelessWidget {
  const OTPVerificationInput({super.key, required this.listOTP});
  final Iterable<TextEditingController> listOTP;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...listOTP.map((e) => OTPITem(
              widthScreen: widthScreen,
              controller: e,
            ))
      ],
    );
  }
}

class OTPITem extends StatefulWidget {
  const OTPITem(
      {super.key, required this.controller, required this.widthScreen});
  final double widthScreen;
  final TextEditingController controller;
  @override
  State<StatefulWidget> createState() {
    return _OTPItem();
  }
}

class _OTPItem extends State<OTPITem> {
  bool _isInput = false;
  void _inputChange(String value) {
    if (value.length == 1) {
      FocusScope.of(context).nextFocus();
      setState(() {
        _isInput = true;
      });
    }
    if (value.isEmpty) {
      FocusScope.of(context).previousFocus();
      setState(() {
        _isInput = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                left: 22,
                top: 28,
                child: Container(
                  width: widget.widthScreen * 0.05,
                  height: 10,
                  decoration: BoxDecoration(
                      color: _isInput
                          ? backgroundColor
                          : const Color.fromRGBO(157, 191, 254, 1),
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              TextField(
                  controller: widget.controller,
                  onChanged: _inputChange,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: ''),
                  style: const TextStyle(fontSize: 36, color: Colors.black)),
            ],
          )),
    );
  }
}
