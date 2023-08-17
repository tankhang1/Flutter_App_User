import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationInput extends StatefulWidget {
  const OTPVerificationInput({super.key, required this.listOTP});
  final Iterable<TextEditingController> listOTP;

  @override
  State<OTPVerificationInput> createState() => _OTPVerificationInputState();
}

class _OTPVerificationInputState extends State<OTPVerificationInput> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...widget.listOTP.map((e) => Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      e.text.isEmpty
                          ? Positioned(
                              left: 22,
                              top: 28,
                              child: Container(
                                width: widthScreen * 0.05,
                                height: 10,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(157, 191, 254, 1),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            )
                          : const SizedBox(),
                      TextField(
                          controller: e,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.isEmpty) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: ''),
                          style: const TextStyle(
                              fontSize: 36, color: Colors.black)),
                    ],
                  )),
            ))
      ],
    );
  }
}
