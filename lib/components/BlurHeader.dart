import 'dart:ui';

import 'package:flutter/material.dart';

class BlurHeader extends StatelessWidget {
  const BlurHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).viewPadding.top,
          width: double.infinity,
        ),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: MediaQuery.of(context).viewPadding.top + 10,
                color: const Color.fromRGBO(178, 159, 255, 0.05),
              ),
            )),
      ],
    );
  }
}
