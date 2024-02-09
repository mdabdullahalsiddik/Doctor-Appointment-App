// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_health/static/color/all_color.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final int? maxLines;
  const CustomTextFromField({
    super.key,
    this.controller,
    this.textInputAction,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      decoration: InputDecoration(
        fillColor: AllColors.whiteColor,
        filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText ?? "Enter text",
        hintStyle: TextStyle(
          fontSize: 14,
          color: AllColors.blackColor.withOpacity(0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AllColors.blackColor.withOpacity(0.5),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AllColors.blackColor.withOpacity(0.5),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AllColors.blackColor.withOpacity(0.5),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AllColors.blackColor.withOpacity(0.5),
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AllColors.blackColor.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
    );
  }
}
