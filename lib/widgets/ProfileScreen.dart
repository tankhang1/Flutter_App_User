import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/ButtonOption.dart';
import 'package:flutter_app_user/components/TextButtonCustom.dart';
import 'package:flutter_app_user/components/TextInput.dart';
import 'package:flutter_app_user/models/OptionModal.dart';
import 'package:flutter_app_user/util/globalStyle.dart';
import 'package:go_router/go_router.dart';

final listButton = <OptionModal>[
  OptionModal(Colors.white, blueColor, 'Ông'),
  OptionModal(blueColor, Colors.white, 'Bà'),
];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            IconButton(
                onPressed: () {
                  context.pop(true);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 36,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tạo Tài Khoản',
                    style: TextStyle(fontSize: 36, color: Colors.black),
                  ),
                  const Text(
                      'Thông tin bạn cần chính xác trên giấy tờ tuỳ thân để tiện làm việc hợp đồng sau này'),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonOption(
                    listButton: listButton,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextInput(
                      placeHolder: 'Ví dụ: Nguyễn Văn A', title: 'HỌ VÀ TÊN'),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextInput(
                    placeHolder: 'DD/MM/YYYY',
                    title: 'NGÀY THÁNG NĂM SINH',
                    isIcon: true,
                    iconData: Icons.health_and_safety,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextInput(
                    placeHolder: 'username@domain.com',
                    title: 'EMAIL',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => blueColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const Expanded(
                          child: Text(
                              'Tôi đồng ý với điều khoản sử dụng và chính sách bảo mật của Affina'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextButtonCustom(
                    title: 'Tiếp Tục',
                    width: double.infinity,
                    actionLink: '/OTP/Profile/PinCode',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
