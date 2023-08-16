import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/PhoneNumberFormatter.dart';

class InputPhoneNumber extends StatefulWidget {
  const InputPhoneNumber(
      {super.key, this.formState, required this.validatePhoneNumber});
  final GlobalKey<FormState>? formState;
  final void Function(String) validatePhoneNumber;
  @override
  State<StatefulWidget> createState() {
    return _InputPhoneNumber();
  }
}

class _InputPhoneNumber extends State<InputPhoneNumber> {
  final String error = '';
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Form(
        key: widget.formState,
        child: SizedBox(
          width: widthScreen * 0.9,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: widthScreen * 0.8 * 0.3,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(58, 126, 252, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1200px-Flag_of_Vietnam.svg.png',
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '+84',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: '123-456-789', border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      inputFormatters: [PhoneFormatter()],
                      validator: (value) {
                        if (value == '') {
                          widget.validatePhoneNumber('Please enter some text');
                          return;
                        }
                        widget.validatePhoneNumber('');
                      },
                    )),
              ),
            ],
          ),
        ));
  }
}
