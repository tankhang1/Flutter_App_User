import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String formatterValue = oldValue.text;

    if (newValue.text.length > oldValue.text.length) {
      if (newValue.text.length % 4 == 0 && newValue.text.isNotEmpty) {
        formatterValue += '-';
        return TextEditingValue(
          text: formatterValue + newValue.text[newValue.text.length - 1],
          selection: TextSelection.collapsed(offset: formatterValue.length + 1),
        );
      }
    }
    debugPrint(oldValue.text);
    return TextEditingValue(
      text: newValue.text,
      selection: TextSelection.collapsed(offset: newValue.text.length),
    );
  }
}
