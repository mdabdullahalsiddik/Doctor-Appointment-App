import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onTap,
    this.text,
  });

  final void Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        width: size.width * .60,
        child: Card(
          color: AllColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomText(
                text: text ?? "",
                color: AllColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
