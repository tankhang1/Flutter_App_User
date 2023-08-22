import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class FooterFaceIDModal extends StatelessWidget {
  const FooterFaceIDModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Material(
          child: InkWell(
            onTap: () => context.pop(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: const Color.fromRGBO(233, 233, 233, 1)),
                  borderRadius: BorderRadius.circular(16)),
              child: const Text('Không',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        Material(
          child: InkWell(
            onTap: () => context.push(('/OnBoarding')),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: const Color.fromRGBO(233, 233, 233, 1)),
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(255, 82, 219, 1)),
              child: const Text('Đồng Ý',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        )
      ],
    );
  }
}

class FaceIDModal extends StatelessWidget {
  const FaceIDModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/Icon.png'),
              width: 150,
              height: 150,
              fit: BoxFit.none,
            ),
            Text(
              'Sử dụng Face ID',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Cho phép ứng dụng sử dụng Face ID để đăng nhập và tài khoản',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            FooterFaceIDModal()
          ],
        ),
      ),
    );
  }
}
