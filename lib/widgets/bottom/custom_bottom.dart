import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onTap,
    this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
  });

  final void Function()? onTap;
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        height: size.height * 0.05,
        width: size.width * 217,
        child: Card(
          color: AllColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(66.0),
          ),
          child: Center(
            child: CustomText(
              text: text ?? "",
              color: color ?? AllColors.whiteColor,
              fontWeight: fontWeight ?? FontWeight.w500,
              fontSize: MediaQuery.of(context).textScaler.scale(fontSize ?? 14),
            ),
          ),
        ),
      ),
    );
  }
}
