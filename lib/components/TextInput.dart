import 'package:flutter/material.dart';
import 'package:flutter_app_user/util/globalStyle.dart';

class TextInput extends StatefulWidget {
  const TextInput(
      {super.key,
      required this.placeHolder,
      required this.title,
      this.iconData,
      this.isIcon = false,
      this.context});
  final String placeHolder;
  final String title;
  final bool isIcon;
  final IconData? iconData;
  final BuildContext? context;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  void _openCalendarPicker() async {
    DateTime? selectedDate = await showDatePicker(
        context: widget.context!,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2025));
    debugPrint(selectedDate.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              color: Color.fromRGBO(174, 174, 174, 1),
              fontWeight: FontWeight.w700,
              fontSize: 14),
        ),
        const SizedBox(
          height: 5,
        ),
        widget.isIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.placeHolder,
                            hintStyle: const TextStyle(
                                color: Color.fromRGBO(207, 207, 207, 1))),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: _openCalendarPicker,
                      child: Container(
                        width: 52,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Icon(widget.iconData,
                            color: Colors.white, size: 24),
                      ))
                ],
              )
            : Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.placeHolder,
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(207, 207, 207, 1))),
                ),
              )
      ],
    );
  }
}
