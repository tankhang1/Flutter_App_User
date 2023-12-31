import 'package:flutter/material.dart';

class Tool extends StatelessWidget {
  const Tool(
      {super.key,
      required this.title,
      required this.linkImage,
      required this.subTitle});
  final String title;
  final String subTitle;
  final String linkImage;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        constraints: const BoxConstraints(minWidth: 150, maxWidth: 200),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromRGBO(233, 233, 233, 1)),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          subtitle: Text(
            subTitle,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          trailing: Image(image: AssetImage(linkImage)),
        ),
      ),
    );
  }
}

class ListTools extends StatelessWidget {
  const ListTools({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Tool(
            title: 'Hợp đồng',
            subTitle: '0 hợp đồng',
            linkImage: "assets/images/home/Coin.png",
          ),
          Tool(
            title: 'Sử dụng điểm',
            subTitle: '0 điểm',
            linkImage: "assets/images/home/Document.png",
          ),
        ],
      ),
    );
  }
}
