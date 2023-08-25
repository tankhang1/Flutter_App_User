import 'package:flutter/material.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/CategoryButton.dart';
import 'package:flutter_app_user/widgets/HomeScreen/res/listCategories.dart';

class CategoriesHorizontal extends StatelessWidget {
  const CategoriesHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...listCategories.map((e) => CategoryButton(
                category: e,
              ))
        ],
      ),
    );
  }
}
