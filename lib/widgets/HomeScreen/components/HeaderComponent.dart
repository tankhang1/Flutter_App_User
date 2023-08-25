import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => debugPrint('Avatar Tap'),
          child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.person_outline,
                color: Color.fromRGBO(255, 186, 241, 1),
              )),
        ),
        const SizedBox(
          width: 15,
        ),
        const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AFFINA xin chào!',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Bạn hãy Đăng Nhập tại đây',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              debugPrint('Notification Tap');
            },
            icon: const Icon(Icons.notifications_outlined))
      ],
    );
  }
}
