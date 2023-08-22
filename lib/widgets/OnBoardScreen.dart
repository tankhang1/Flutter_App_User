import 'package:flutter/material.dart';
import 'package:flutter_app_user/models/OnBoardingModal.dart';
import 'package:flutter_app_user/util/globalStyle.dart';

final listOnBoarding = [
  OnBoardingModal('assets/images/Online.png', '100% Trực Tuyến',
      'Một chạm để được bảo hiểm, một phút để hoàn tất yêu cầu bồi thường, một phút hoàn tất bồi thường')
];

class FooterOnBoarding extends StatelessWidget {
  const FooterOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: const Text('Bỏ Qua',
                style: TextStyle(
                    color: Color.fromRGBO(7, 75, 201, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600))),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: const Text('TIẾP TỤC',
                style: TextStyle(
                    color: Color.fromRGBO(7, 75, 201, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700))),
      ],
    );
  }
}

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: 316,
                height: 316,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 223, 254, 1),
                    borderRadius: BorderRadius.circular(200)),
                alignment: Alignment.center,
                child:
                    const Image(image: AssetImage('assets/images/Online.png')),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                '100% Trực Tuyến',
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Một chạm để được bảo hiểm, một phút để hoàn tất yêu cầu bồi thường, một phút hoàn tất bồi thường',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text('Carousel'),
              const Spacer(),
              const FooterOnBoarding(),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
