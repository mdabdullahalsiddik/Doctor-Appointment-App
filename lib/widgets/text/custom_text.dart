import 'package:easy_health/static/color/all_color.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final int? maxLines;
  const CustomText({
    super.key,
    required this.text,
    this.textAlign,
    this.overflow,
    this.color,
    this.fontWeight,
    this.fontSize, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines:maxLines?? 1,
      style: TextStyle(
        color: color ?? AllColors.blackColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 14,
      ),
    );
  }
}
