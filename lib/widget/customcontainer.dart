import 'package:flutter/material.dart';
import 'package:fluttertask1/theme/text_style.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String letter;

  const CustomContainer({
    Key? key,
    required this.color,
    required this.letter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: Center(
        child: Text(letter, style: AppTextStyle.text),
      ),
    );
  }
}
