import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom(
      {super.key,
      required this.width,
      required this.title,
      this.formState,
      required this.actionLink});
  final double width;
  final String title;
  final GlobalKey<FormState>? formState;
  final String actionLink;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if (formState.currentState.validate()) {
        //   debugPrint('Bug');
        // }
        debugPrint('go to OTP Screen');
        context.go(actionLink);
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
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
