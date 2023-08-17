import 'package:flutter/material.dart';
import 'package:flutter_app_user/models/OptionModal.dart';
import 'package:flutter_app_user/widgets/ProfileScreen.dart';

class ButtonOption extends StatefulWidget {
  const ButtonOption({super.key, required this.listButton});
  final Iterable<OptionModal> listButton;
  @override
  State<StatefulWidget> createState() {
    return _ButtonOption();
  }
}

class _ButtonOption extends State<ButtonOption> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...listButton.map((e) => InkWell(
              onTap: () => {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: e.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  e.text,
                  style: TextStyle(color: e.color, fontWeight: FontWeight.bold),
                ),
              ),
            ))
      ],
    );
  }
}
