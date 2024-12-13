import 'package:flutter/material.dart';
import 'package:fluttertask1/model/lettermodel.dart';
import 'package:fluttertask1/theme/text_style.dart';

class CustomContainer extends StatelessWidget {
  final LetterModel l;

  const CustomContainer({
    super.key,
    required this.l,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: l.color,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: Center(
        child: Text(l.letter, style: AppTextStyle.text),
      ),
    );
  }
}
