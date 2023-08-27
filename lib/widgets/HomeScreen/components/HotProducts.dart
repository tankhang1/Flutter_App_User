import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.imageLink});
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(imageLink));
  }
}

class HotProducts extends StatelessWidget {
  const HotProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Sản Phẩm Nổi Bật',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Xem tất cả',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(7, 75, 201, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const Product(imageLink: 'assets/images/home/Product.png'),
        const SizedBox(
          height: 15,
        ),
        const Product(imageLink: 'assets/images/home/Product_2.png'),
      ],
    );
  }
}
