import 'package:flutter/material.dart';
import 'dart:math' as math;

class TagItem extends StatelessWidget {
  const TagItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 2,
      child: TextButton(
          onPressed: () {},
          child: Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2, color: Color.fromRGBO(4, 69, 193, 1)))),
                child: Text(
                  title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Color.fromRGBO(4, 69, 186, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                )),
          )),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TagItem(title: 'Khám Phá'),
          TagItem(title: 'Thẻ BH của Tôi'),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 300,
        height: 200,
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: const Image(
          image: AssetImage('assets/images/Card-2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class TagsCards extends StatelessWidget {
  const TagsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Tags(), Cards()],
      ),
    );
  }
}
