import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/FaceIDModal.dart';
import 'package:go_router/go_router.dart';

final pinCodeButtonLabel = [1, 2, 3, 4, 5, 6, 7, 8, 9, '', 0, 'Xóa'];

class PinCodeKeyBoard extends StatelessWidget {
  const PinCodeKeyBoard(
      {super.key,
      required this.addListPinCode,
      required this.removeListPinCode});
  final void Function(String) addListPinCode;
  final void Function() removeListPinCode;
  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) => const FaceIDModal(),
      );
    }

    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      crossAxisCount: 3,
      children: <Widget>[
        TextButton(
            onPressed: () {
              showAlertDialog();

              addListPinCode('1');
            },
            child: const Text(
              '1',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('2');
            },
            child: const Text(
              '2',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('3');
            },
            child: const Text(
              '3',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('4');
            },
            child: const Text(
              '4',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('5');
            },
            child: const Text(
              '5',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('6');
            },
            child: const Text(
              '6',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('7');
            },
            child: const Text(
              '7',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('8');
            },
            child: const Text(
              '8',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              addListPinCode('9');
            },
            child: const Text(
              '9',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        Container(),
        TextButton(
            onPressed: () {
              addListPinCode('0');
            },
            child: const Text(
              '0',
              style: TextStyle(fontSize: 32, color: Colors.black),
            )),
        TextButton(
            onPressed: () {
              removeListPinCode();
            },
            child: const Text(
              'Xóa',
              style: TextStyle(fontSize: 18, color: Colors.black),
            )),
      ],
    );
  }
}
