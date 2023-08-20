import 'package:flutter/material.dart';
import 'package:flutter_app_user/components/TextInput.dart';
import 'package:flutter_app_user/components/TextInputSearch.dart';
import 'package:flutter_app_user/models/CountryModal.dart';

final listCountries = {
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
  CountryModal(
      'https://seeklogo.com/images/V/viet-nam-logo-3D78D597F9-seeklogo.com.png',
      'Viet Nam',
      84),
};

class CountryItem extends StatelessWidget {
  const CountryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint('TAP'),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1200px-Flag_of_Vietnam.svg.png'),
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Viet Nam',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const Spacer(),
            const Text(
              '+84',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheetCustom extends StatelessWidget {
  const BottomSheetCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      color: Colors.white,
      child: Column(
        children: [
          const TextInputSearch(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listCountries.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => const CountryItem(),
            ),
          )
        ],
      ),
    );
  }
}
