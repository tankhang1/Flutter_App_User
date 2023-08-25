import 'package:flutter/material.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/CategoriesHorizontal.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/HeaderComponent.dart';

import 'components/TagsCards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        body: Container(
          height: 480,
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
                Color.fromRGBO(245, 245, 245, 0),
                Color.fromRGBO(245, 245, 245, 0.75),
                Color.fromRGBO(245, 245, 245, 1)
              ]),
              image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.fitWidth)),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 50),
                HeaderComponent(),
                CategoriesHorizontal(),
                TagsCards(),
              ],
            ),
          ),
        ));
  }
}
