import 'package:flutter/material.dart';
import 'package:flutter_app_user/models/OnBoardingModal.dart';
import 'package:flutter_app_user/util/globalStyle.dart';

final listOnBoarding = [
  OnBoardingModal('assets/images/Online.png', '100% Trực Tuyến',
      'Một chạm để được bảo hiểm, một phút để hoàn tất yêu cầu bồi thường, một phút hoàn tất bồi thường'),
  OnBoardingModal('assets/images/Process.png', 'Quy trình đơn giản',
      'Không cần khai báo tình trạng bệnh lý để tham gia bảo hiểm'),
  OnBoardingModal('assets/images/Child.png', 'Tham gia độc lập',
      'Trẻ em từ 30 ngày tuổi được tham gia độc lập mà không cần bố mẹ tham gia cùng'),
  OnBoardingModal('assets/images/Partner.png', 'Cam kết đồng hành',
      'Luôn bên cạnh bạn và cam kết tái tục bảo hiểm trong những năm tiếp theo'),
  OnBoardingModal('assets/images/Account.png', 'Đăng nhập ngay',
      'Để không bỏ lỡ những dịch vụ và ưu đãi hấp dẫn dành riêng cho bạn'),
];

class FooterOnBoarding extends StatelessWidget {
  const FooterOnBoarding({super.key, required this.nextCarousel});
  final void Function(int?) nextCarousel;
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
            onPressed: () => nextCarousel(null),
            child: const Text('TIẾP TỤC',
                style: TextStyle(
                    color: Color.fromRGBO(7, 75, 201, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700))),
      ],
    );
  }
}

class CarouselSlider extends StatefulWidget {
  const CarouselSlider(
      {super.key, required this.nextCarousel, required this.currentPage});
  final void Function(int) nextCarousel;
  final int currentPage;
  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.currentPage);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  Widget carouselIndicator(int index) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: widget.currentPage == index ? 36 : 7,
        child: Container(
          height: 7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.currentPage == index
                  ? const Color.fromRGBO(7, 75, 201, 1)
                  : const Color.fromRGBO(157, 191, 254, 1)),
        ));
  }

  Widget carouselCard(OnBoardingModal onBoardingModal) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 316,
            height: 316,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(206, 223, 254, 1),
                borderRadius: BorderRadius.circular(200)),
            alignment: Alignment.center,
            child: Image(image: AssetImage(onBoardingModal.image)),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            onBoardingModal.title,
            style: const TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            onBoardingModal.subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 500,
            child: PageView.builder(
              onPageChanged: (value) => widget.nextCarousel(value),
              controller: pageController,
              itemCount: listOnBoarding.length,
              itemBuilder: (context, index) {
                return carouselCard(listOnBoarding[index]);
              },
            )),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < listOnBoarding.length; i++)
                carouselIndicator(i)
            ],
          ),
        )
      ],
    );
  }
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int currentPage = 0;
  void nextCarousel(int? index) {
    setState(() {
      currentPage = index ?? currentPage + 1;
    });
  }

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
              CarouselSlider(
                nextCarousel: nextCarousel,
                currentPage: currentPage,
              ),
              const Spacer(),
              FooterOnBoarding(
                nextCarousel: nextCarousel,
              ),
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
