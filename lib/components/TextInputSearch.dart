import 'package:flutter/material.dart';

class TextInputSearch extends StatelessWidget {
  const TextInputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 24,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter your country'),
          )),
        ],
      ),
    );
  }
}
