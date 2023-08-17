import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/CountDown.dart';
import 'package:flutter_app_user/components/OTPVerificationInput.dart';
import 'package:flutter_app_user/components/TextButtonCustom.dart';
import 'package:flutter_app_user/util/globalStyle.dart';
import 'package:go_router/go_router.dart';

class HeaderSignUpOTP extends StatelessWidget {
  const HeaderSignUpOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nhập Mã OTP',
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
          Text(
            'Chúng tôi vừa gửi mã OTP, hãy nhập nó vào bên dưới',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class BottomSignUpOTP extends StatefulWidget {
  const BottomSignUpOTP({super.key, required this.actionLink});
  final String actionLink;
  @override
  State<BottomSignUpOTP> createState() => _BottomSignUpOTPState();
}

class _BottomSignUpOTPState extends State<BottomSignUpOTP> {
  bool startTimmer = true;
  void _finishTimmer() {
    setState(() {
      startTimmer = false;
    });
  }

  void _startTimmer() {
    setState(() {
      startTimmer = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButtonCustom(
              width: 344, title: 'Tiếp Tục', actionLink: widget.actionLink),
          const SizedBox(
            height: 7,
          ),
          const Text('Bạn không nhận được mã OTP?'),
          startTimmer
              ? CountDown(finishTimmer: _finishTimmer)
              : TextButton(
                  onPressed: _startTimmer,
                  child: const Text(
                    'Gửi lại mã OTP',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )),
        ],
      ),
    );
  }
}

final listOTP = [1, 2, 3, 4, 5, 6].map((e) => TextEditingController());

class SignUpOTP extends StatelessWidget {
  const SignUpOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            IconButton(
                onPressed: () {
                  context.pop(true);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 36,
                )),
            const SizedBox(
              height: 20,
            ),
            const HeaderSignUpOTP(),
            const SizedBox(
              height: 30,
            ),
            OTPVerificationInput(
              listOTP: listOTP,
            ),
            const Spacer(
              flex: 3,
            ),
            const BottomSignUpOTP(actionLink: '/OTP/Profile'),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
