import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.fontSize,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final double ? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child:   TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text ,
          style: Styles.textStyle18.copyWith(color: textColor,fontSize: fontSize ),
        ),
      ),
    );
  }
}
