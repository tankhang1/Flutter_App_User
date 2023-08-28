import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/BlurHeader.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/CategoriesHorizontal.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/HeaderComponent.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/HotProducts.dart';
import 'package:flutter_app_user/widgets/HomeScreen/components/Tool.dart';

import 'components/TagsCards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        body: Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              child: Container(
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
              ),
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    HeaderComponent(),
                    CategoriesHorizontal(),
                    TagsCards(),
                    SizedBox(
                      height: 10,
                    ),
                    ListTools(),
                    SizedBox(
                      height: 10,
                    ),
                    HotProducts(),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            const BlurHeader(),
          ],
        ));
  }
}
