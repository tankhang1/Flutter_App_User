import 'package:flutter/material.dart';

class SecurityVerificationInput extends StatelessWidget {
  const SecurityVerificationInput({super.key, required this.listSecurityCode});
  final List<String> listSecurityCode;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...[1, 2, 3, 4, 5, 6].map((e) => SecurityItem(
              isInput: listSecurityCode.length >= e ? true : false,
            ))
      ],
    );
  }
}

class SecurityItem extends StatelessWidget {
  const SecurityItem({super.key, required this.isInput});
  final bool isInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 10,
      decoration: BoxDecoration(
        color: isInput
            ? const Color.fromRGBO(9, 94, 251, 1)
            : const Color.fromRGBO(157, 191, 254, 1),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
