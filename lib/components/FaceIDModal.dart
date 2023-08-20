import 'package:flutter/material.dart';

class FaceIDModal extends StatelessWidget {
  const FaceIDModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: const Column(),
      ),
    );
  }
}
