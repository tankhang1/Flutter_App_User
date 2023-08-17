import 'dart:async';

import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  const CountDown({super.key, required this.finishTimmer});
  final void Function() finishTimmer;
  @override
  State<StatefulWidget> createState() {
    return _CountDown();
  }
}

class _CountDown extends State<CountDown> {
  static const maxSeconds = 20;
  int seconds = maxSeconds;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        widget.finishTimmer();
      } else {
        setState(() => seconds--);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${seconds ~/ 60 < 10 ? '0${seconds ~/ 60}' : seconds ~/ 60}:${seconds % 60 < 10 ? '0${seconds % 60}' : seconds % 60}',
      style: const TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
