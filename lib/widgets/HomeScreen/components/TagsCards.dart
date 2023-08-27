import 'package:flutter/material.dart';
import 'dart:math' as math;

class TagItem extends StatelessWidget {
  const TagItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: -math.pi / 2,
        child: InkWell(
          onTap: () {
            debugPrint('tap');
          },
          child: Container(
              height: 50,
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
        ));
  }
}

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TagItem(title: 'Khám Phá'),
        SizedBox(
          height: 50,
        ),
        TagItem(title: 'Thẻ BH của Tôi'),
      ],
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: const Image(
            image: AssetImage('assets/images/Card-2.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 20,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(58, 126, 252, 1)),
        )
      ],
    );
  }
}

class TagsCards extends StatelessWidget {
  const TagsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [Tags(), Cards()],
    );
  }
}
