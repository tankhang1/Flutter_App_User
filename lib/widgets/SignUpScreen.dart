import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/InputPhoneNumber.dart';
import 'package:flutter_app_user/components/TextButtonCustom.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Xin Chào Bạn',
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Vui lòng nhập số điện thoại của bạn để tiếp tục',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'SỐ ĐIỆN THOẠI',
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(174, 174, 174, 1),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _error = '';
  void validatePhoneNumber(String error) {
    setState(() {
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          const HeaderSignUp(),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InputPhoneNumber(
                formState: _formKey,
                validatePhoneNumber: validatePhoneNumber,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                _error,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          TextButtonCustom(
            width: 344,
            title: 'Tiếp Tục',
            formState: _formKey,
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
