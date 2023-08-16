import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom(
      {super.key,
      required this.width,
      required this.title,
      required this.formState});
  final double width;
  final String title;
  final GlobalKey<FormState> formState;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint(formState.currentState?.validate().toString());
        // if (formState.currentState.validate()) {
        //   debugPrint('Bug');
        // }
      },
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 82, 219, 1),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(255, 82, 219, 0.25),
                  blurRadius: 32,
                  spreadRadius: 0,
                  offset: Offset(0, 8))
            ]),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
