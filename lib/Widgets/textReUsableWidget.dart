import 'package:flutter/material.dart';

import '../Constant.dart';

class textReUsableWiget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String thirdText;
  final Function()? onPressed;

  const textReUsableWiget({
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Row(
        children: [
          Text(
            firstText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            secondText,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              thirdText,
              style: const TextStyle(color: kprimaryColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
