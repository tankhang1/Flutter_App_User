import 'package:flutter/material.dart';
import 'package:flutter_app_user/widgets/HomeScreen/model/CategoryModel.dart';
import 'package:flutter_svg/svg.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48,
          height: 48,
          margin:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: category.key == 1
                  ? const Color.fromRGBO(7, 75, 201, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(20)),
          child: SvgPicture.asset(
            category.imgLink,
            colorFilter: ColorFilter.mode(
                category.key == 1
                    ? Colors.white
                    : const Color.fromRGBO(96, 96, 96, 1),
                BlendMode.srcIn),
          ),
        ),
        Text(
          'Sức Khoẻ',
          style: TextStyle(
              color: category.key == 1
                  ? const Color.fromRGBO(7, 75, 201, 1)
                  : const Color.fromRGBO(96, 96, 96, 1),
              fontWeight: FontWeight.w700,
              fontSize: 12),
        )
      ],
    );
  }
}
